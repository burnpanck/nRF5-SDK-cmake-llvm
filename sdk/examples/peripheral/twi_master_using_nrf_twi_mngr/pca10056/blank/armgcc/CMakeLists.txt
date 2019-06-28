
cmake_minimum_required(VERSION 3.12)

project(twi_master_using_nrf_twi_mngr_pca10056 C ASM)

set(PROJ_DIR "${CMAKE_CURRENT_LIST_DIR}/../../..")
set(SDK_ROOT "${PROJ_DIR}/../../..")
set(OPT -O3 -g3)

set(IMAGE_NAME "twi_master_using_nrf_twi_mngr_pca10056_nrf52840_xxaa")

include(${SDK_ROOT}/../cmake/nRF5-SDK.cmake)


# SDK static library
nrf_add_image(${IMAGE_NAME}
    ADD_SDK_DIRECTLY
    DEVICE nrf52840_xxaa
    SOFTDEVICE nosd
    CONFIG_PATH "${PROJ_DIR}/pca10056/blank/config"
    MODULES app_error_handler boards bsp bsp_api button drv_clock log_api log_backend_rtt log_backend_uart log_ctrl log_default_backends mdk nrfx_atomic nrfx_gpiote pwr_mgmt timer twi_mngr util
    SOURCES ${PROJ_DIR}/lm75b.c
    ${PROJ_DIR}/main.c
    ${PROJ_DIR}/mma7660.c
    LINKER_SCRIPT ${PROJ_DIR}/pca10056/blank/armgcc/twi_master_using_nrf_twi_mngr_gcc_nrf52.ld
    LINK_FLAGS ${OPT}
        -Wl,--gc-sections
)
# configure SDK
target_compile_options(${IMAGE_NAME}_cfg INTERFACE
    ${OPT}
    -DBOARD_PCA10056
    -DCONFIG_GPIO_AS_PINRESET
    -DSWI_DISABLE0
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
