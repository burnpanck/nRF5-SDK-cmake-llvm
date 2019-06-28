
cmake_minimum_required(VERSION 3.12)

project(usbd_msc_pca10056 C ASM)

set(PROJ_DIR "${CMAKE_CURRENT_LIST_DIR}/../../..")
set(SDK_ROOT "${PROJ_DIR}/../../..")
set(OPT -O3 -g3)

set(IMAGE_NAME "usbd_msc_pca10056_nrf52840_xxaa")

include(${SDK_ROOT}/../cmake/nRF5-SDK.cmake)


# SDK static library
nrf_add_image(${IMAGE_NAME}
    ADD_SDK_DIRECTLY
    DEVICE nrf52840_xxaa
    SOFTDEVICE nosd
    CONFIG_PATH "${PROJ_DIR}/pca10056/blank/config"
    MODULES app_error_handler app_uart_fifo atomic block_dev block_dev_empty block_dev_qspi block_dev_ram block_dev_sdc bsp bsp_api button drv_clock drv_power drv_usbd fatfs hal_gpio hardfault log_api log_backend_rtt log_backend_uart log_ctrl log_default_backends mdk nrfx_atomic nrfx_gpiote nrfx_qspi timer usbd_class_msc usbd_core util
    SOURCES ${PROJ_DIR}/main.c
    LINKER_SCRIPT ${PROJ_DIR}/pca10056/blank/armgcc/usbd_msc_gcc_nrf52.ld
    LINK_FLAGS ${OPT}
        -Wl,--gc-sections
)
# configure SDK
target_compile_options(${IMAGE_NAME}_cfg INTERFACE
    ${OPT}
    -DBOARD_PCA10056
    -DCONFIG_GPIO_AS_PINRESET
    -DDEBUG
    -DDEBUG_NRF
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
