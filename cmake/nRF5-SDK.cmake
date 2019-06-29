
set(NRF5_SDK_ROOT "${CMAKE_CURRENT_LIST_DIR}/../sdk")

include(${CMAKE_CURRENT_LIST_DIR}/modules.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/sources.cmake)


function(nrf_get_device_properties target var_name)
    string(REGEX MATCH "^([nN][rR][fF](52810|52811|52832|52840)(_xx[a-z][a-z])?)$" target_numeric "${target}")
    if(NOT target_numeric)
        message(SEND_ERROR "DEVICE=${target} is invalid (${target_numeric})")
    endif()
    set(target_numeric ${CMAKE_MATCH_2})

    # it seems the SDK does not support soft-float on hard-float targets, so we don't offer configuration
    set(hard_float_targets 52832 52840)
    if(target_numeric IN_LIST hard_float_targets)
        set(float_abi hard)
    else()
        set(float_abi soft)
    endif()
    set(abi_flags
        -mthumb
        -mabi=aapcs
        -mfloat-abi=${float_abi}
        -mcpu=cortex-m4
    )
    if(float_abi STREQUAL hard)
        list(APPEND abi_flags -mfpu=fpv4-sp-d16)
    endif()

    set(${var_name}_numeric ${target_numeric} PARENT_SCOPE)
    set(${var_name}_float_abi ${float_abi} PARENT_SCOPE)
    set(${var_name}_abi_flags ${abi_flags} PARENT_SCOPE)
endfunction()

function(nrf_add_image target_name)
    # parse function arguments
    set(option_keywords ADD_SDK_DIRECTLY) # passed on: MODULE_LIBRARIES
    set(one_value_keywords DEVICE SOFTDEVICE LINKER_SCRIPT) # passed on: CONFIG_PATH
    set(multi_value_keywords SOURCES LINK_FLAGS) # passed on: MODULES
    cmake_parse_arguments(PARSE_ARGV 1 IMG "${option_keywords}" "${one_value_keywords}" "${multi_value_keywords}")

    # TODO: Detect arm-none-eabi-ld vs ld.lld
    if(NOT DEFINED TOOLCHAIN_LINK_FLAGS)
        if(CMAKE_C_COMPILER_ID STREQUAL Clang)
            set(TOOLCHAIN_LINK_FLAGS )
        else()
            set(TOOLCHAIN_LINK_FLAGS --specs=nano.specs)
        endif()
    endif()

    if(NOT DEFINED TOOLCHAIN_LINK_LIBRARIES)
        if(CMAKE_C_COMPILER_ID STREQUAL Clang)
            set(TOOLCHAIN_LINK_LIBRARIES -l:crt0.o)
        else()
            set(TOOLCHAIN_LINK_LIBRARIES )# -Wl,--start-group -lgcc -lnosys -lc -Wl,--end-group )
        endif()
    endif()

    if((NOT DEFINED IMG_DEVICE) OR (IMG_DEVICE STREQUAL ""))
        message(SEND_ERROR "need to specify DEVICE parameter to nrf_add_image")
    endif()
    nrf_get_device_properties("${IMG_DEVICE}" device)

    if(NOT TARGET ${target_name})
        add_executable(${target_name} ${IMG_SOURCES})
    endif()
    if(${IMG_ADD_SDK_DIRECTLY})
        nrf_add_sdk(${target_name}
            DEVICE "${IMG_DEVICE}"
            SOFTDEVICE "${IMG_SOFTDEVICE}"
            ${IMG_UNPARSED_ARGUMENTS}
        )
    endif()
    if(IMG_SOURCES)
        target_sources(${target_name} PRIVATE ${IMG_SOURCES})
    endif()
    set(link_flags ${IMG_LINK_FLAGS})
    list(APPEND link_flags
        -L${NRF5_SDK_ROOT}/modules/nrfx/mdk  # "include path" for linker scripts
        -T${IMG_LINKER_SCRIPT}
        ${TOOLCHAIN_LINK_FLAGS}
    )
    list(APPEND link_flags ${device_abi_flags})
    list(JOIN link_flags " " link_flags)
    set_target_properties(${target_name} PROPERTIES
        SUFFIX ".out"
        LINK_FLAGS "${link_flags}"
        LINK_DEPENDS "${IMG_LINKER_SCRIPT}"
    )
    target_link_libraries(${target_name} PUBLIC ${TOOLCHAIN_LINK_LIBRARIES})
    list(APPEND cmds COMMAND ${CMAKE_SIZE_UTIL} ${target_name}.out)
    list(APPEND cmds COMMAND ${CMAKE_OBJCOPY} -O binary ${target_name}.out "${target_name}.bin")
    if(NOT CMAKE_OBJCOPY_NO_SUPPORT_FOR_INTEL_HEX)
        list(APPEND cmds COMMAND ${CMAKE_OBJCOPY} -O ihex ${target_name}.out "${target_name}.hex")
    endif()
    add_custom_command(TARGET ${target_name}
        POST_BUILD ${cmds}
        COMMENT "post build steps for ${target_name}"
    )
endfunction()

function(nrf_add_sdk target_name)
    # parse function arguments
    set(option_keywords MODULE_LIBRARIES)
    set(one_value_keywords DEVICE SOFTDEVICE CONFIG_PATH)
    set(multi_value_keywords MODULES)
    cmake_parse_arguments(PARSE_ARGV 1 SDK "${option_keywords}" "${one_value_keywords}" "${multi_value_keywords}")

    # validate function arguments
    set(N ${target_name})

    if((NOT DEFINED SDK_DEVICE) OR (SDK_DEVICE STREQUAL ""))
        message(SEND_ERROR "need to specify DEVICE parameter to nrf_add_sdk")
    endif()
    nrf_get_device_properties(${SDK_DEVICE} device)

    if((NOT DEFINED SDK_SOFTDEVICE) OR (SDK_SOFTDEVICE STREQUAL "") OR (SDK_SOFTDEVICE STREQUAL "nosd"))
        set(softdevice_defines "")
        set(softdevice_module nosd)
    elseif(SDK_SOFTDEVICE STREQUAL "mbr")
        set(softdevice_defines -DMBR_PRESENT)
        set(softdevice_module mbr_nrf${device_numeric})
    else()
        set(softdevice_defines -DSOFTDEVICE_PRESENT -D$<UPPER_CASE:${SDK_SOFTDEVICE}>)
        set(softdevice_module ${SDK_SOFTDEVICE})
    endif()

    # create CMake target(s)
    if(NOT TARGET ${N})
        add_library(${N} STATIC ${NRF5_SDK_ROOT}/../cmake/empty.c)
    endif()
    if(SDK_MODULE_LIBRARIES)
        nrf_declare_sdk_modules(${N} ${NRF5_SDK_ROOT})
    else()
        nrf_declare_sdk_modules_flat(${N} ${NRF5_SDK_ROOT} "${SDK_MODULES}"
            nrf${device_numeric} # mdk
            ${softdevice_module} # softdevice
        )
    endif()

    list(TRANSFORM SDK_MODULES PREPEND "${N}_")
    target_link_libraries(${N} PUBLIC
        ${SDK_MODULES}
    )

    # create configuration
    add_library(${N}_cfg INTERFACE)
    target_compile_options(${N}_cfg INTERFACE ${device_abi_flags})
    target_compile_definitions(${N}_cfg INTERFACE
        -DFLOAT_ABI_$<UPPER_CASE:${device_float_abi}>
        -D$<UPPER_CASE:${SDK_DEVICE}>
        ${softdevice_defines}
    )

    # link cmsis to configuration - it does not link to sdk-config
    target_link_libraries(${N}_cmsis INTERFACE ${N}_cfg)

    # handle sdk-config
    add_library(${N}_sdk_cfg INTERFACE)
    target_include_directories(${N}_sdk_cfg INTERFACE ${SDK_CONFIG_PATH})
    target_link_libraries(${N}_sdk_cfg INTERFACE ${N}_cfg)

    # generic sdk-config
    #target_link_libraries(${N}_nrf52840_cfg INTERFACE ${N}_cfg)

    # link variant targets
    add_library(${N}_mdk ALIAS ${N}_nrf${device_numeric})
    if(softdevice_module STREQUAL "mbr_nrf52811")
        add_library(${N}_softdevice ALIAS ${N}_mbr_nrf52810)
    else()
        add_library(${N}_softdevice ALIAS ${N}_${softdevice_module})
    endif()
    add_library(${N}_config ALIAS ${N}_sdk_cfg)
endfunction() # add_nrf_sdk