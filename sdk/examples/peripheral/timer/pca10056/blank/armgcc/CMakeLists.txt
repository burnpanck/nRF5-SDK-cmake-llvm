
cmake_minimum_required(VERSION 3.12)

project(timer_pca10056 C ASM)

set(PROJ_DIR "${CMAKE_CURRENT_LIST_DIR}/../../..")
set(SDK_ROOT "${PROJ_DIR}/../../..")
set(OPT -O3 -g3)

set(IMAGE_NAME "timer_pca10056_nrf52840_xxaa")

include(${SDK_ROOT}/../cmake/nRF5-SDK.cmake)


# SDK static library
nrf_add_image(${IMAGE_NAME}
    ADD_SDK_DIRECTLY
    DEVICE nrf52840_xxaa
    SOFTDEVICE nosd
    CONFIG_PATH "${PROJ_DIR}/pca10056/blank/config"
    MODULES app_error_handler bsp_api drv_timer log mdk nrfx_atomic util
    SOURCES ${PROJ_DIR}/main.c
    LINKER_SCRIPT ${PROJ_DIR}/pca10056/blank/armgcc/timer_gcc_nrf52.ld
    LINK_FLAGS ${OPT}
        -Wl,--gc-sections
)
# configure SDK
target_compile_options(${IMAGE_NAME}_cfg INTERFACE
    ${OPT}
    -DBOARD_PCA10056
    -DBSP_DEFINES_ONLY
    -DCONFIG_GPIO_AS_PINRESET
    -Wall
    -Werror
    -ffunction-sections
    -fdata-sections
    -fno-strict-aliasing
    -fno-builtin
    -fshort-enums
)
# configure image
target_include_directories(${IMAGE_NAME} INTERFACE
    ${PROJ_DIR}/.
)
target_link_libraries(${IMAGE_NAME} PRIVATE -lc -lnosys -lm)
target_compile_options(${IMAGE_NAME} PUBLIC
    -D__HEAP_SIZE=8192
    -D__STACK_SIZE=8192
)
