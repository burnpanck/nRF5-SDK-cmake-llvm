
# This file is generated using "tools/Identify header dependencies.ipynb".
    
# Declare (or add, if it already exists) SDK sources to a single target
# Create interface targets for all components
function(nrf_declare_sdk_modules_flat target_name sdk_root components mdk softdevice)
    
# Collect dependencies for the source build in reverse order
    
# Build dependencies of component "cli_cdc_acm"
if(cli_cdc_acm_needed OR (cli_cdc_acm IN_LIST components))
    set(cli_cdc_acm_needed YES)
    # Dependencies:
    set(cli_api_needed YES)
    set(usbd_class_cdc_acm_needed YES)
    set(util_needed YES)
    set(queue_needed YES)
endif()

# Build dependencies of component "usbd_class_cdc_acm"
if(usbd_class_cdc_acm_needed OR (usbd_class_cdc_acm IN_LIST components))
    set(usbd_class_cdc_acm_needed YES)
    # Dependencies:
    set(usbd_core_needed YES)
    set(drv_usbd_needed YES)
    set(usbd_class_cdc_needed YES)
    set(util_needed YES)
    set(log_api_needed YES)
endif()

# Build dependencies of component "usbd_class_msc"
if(usbd_class_msc_needed OR (usbd_class_msc IN_LIST components))
    set(usbd_class_msc_needed YES)
    # Dependencies:
    set(usbd_core_needed YES)
    set(block_dev_needed YES)
    set(drv_usbd_needed YES)
    set(util_needed YES)
    set(log_api_needed YES)
endif()

# Build dependencies of component "usbd_class_cdc"
if(usbd_class_cdc_needed OR (usbd_class_cdc IN_LIST components))
    set(usbd_class_cdc_needed YES)
    # Dependencies:
    set(usbd_core_needed YES)
endif()

# Build dependencies of component "log_backend_uart"
if(log_backend_uart_needed OR (log_backend_uart IN_LIST components))
    set(log_backend_uart_needed YES)
    # Dependencies:
    set(log_ctrl_needed YES)
    set(drv_uart_needed YES)
    set(util_needed YES)
    set(log_api_needed YES)
    set(log_backend_serial_needed YES)
endif()

# Build dependencies of component "log_backend_rtt"
if(log_backend_rtt_needed OR (log_backend_rtt IN_LIST components))
    set(log_backend_rtt_needed YES)
    # Dependencies:
    set(log_ctrl_needed YES)
    set(log_needed YES)
    set(segger_rtt_needed YES)
    set(log_api_needed YES)
    set(log_backend_serial_needed YES)
    set(util_needed YES)
    set(delay_needed YES)
endif()

# Build dependencies of component "usbd_core"
if(usbd_core_needed OR (usbd_core IN_LIST components))
    set(usbd_core_needed YES)
    # Dependencies:
    set(drv_usbd_needed YES)
    set(util_needed YES)
    set(mdk_needed YES)
    set(drv_power_needed YES)
    set(atomic_fifo_needed YES)
    set(atomic_needed YES)
    set(hal_power_needed YES)
    set(log_api_needed YES)
    set(drv_clock_needed YES)
    set(utf_converter_needed YES)
    set(config_needed YES)
endif()

# Build dependencies of component "log_backend_serial"
if(log_backend_serial_needed OR (log_backend_serial IN_LIST components))
    set(log_backend_serial_needed YES)
    # Dependencies:
    set(log_ctrl_needed YES)
    set(fprintf_needed YES)
    set(log_needed YES)
    set(util_needed YES)
    set(log_api_needed YES)
endif()

# Build dependencies of component "log_backend_flash"
if(log_backend_flash_needed OR (log_backend_flash IN_LIST components))
    set(log_backend_flash_needed YES)
    # Dependencies:
    set(log_api_needed YES)
    set(log_ctrl_needed YES)
    set(fstorage_needed YES)
    set(log_needed YES)
    set(util_needed YES)
    set(cli_api_needed YES)
    set(atomic_needed YES)
    set(queue_needed YES)
    set(delay_needed YES)
endif()

# Build dependencies of component "cli_libuarte"
if(cli_libuarte_needed OR (cli_libuarte IN_LIST components))
    set(cli_libuarte_needed YES)
    # Dependencies:
    set(cli_api_needed YES)
    set(timer_needed YES)
    set(libuarte_needed YES)
    set(ringbuf_needed YES)
    set(util_needed YES)
    set(libuarte_async_needed YES)
    set(log_api_needed YES)
endif()

# Build dependencies of component "cli"
if(cli_needed OR (cli IN_LIST components))
    set(cli_needed YES)
    # Dependencies:
    set(cli_api_needed YES)
    set(util_needed YES)
    set(log_needed YES)
    set(atomic_needed YES)
    set(log_api_needed YES)
    set(fnmatch_needed YES)
    set(pwr_mgmt_needed YES)
    set(delay_needed YES)
endif()

# Build dependencies of component "block_dev_sdc"
if(block_dev_sdc_needed OR (block_dev_sdc IN_LIST components))
    set(block_dev_sdc_needed YES)
    # Dependencies:
    set(block_dev_needed YES)
    set(sdcard_needed YES)
endif()

# Build dependencies of component "twi_mngr"
if(twi_mngr_needed OR (twi_mngr IN_LIST components))
    set(twi_mngr_needed YES)
    # Dependencies:
    set(queue_needed YES)
    set(drv_twi_needed YES)
    set(util_needed YES)
endif()

# Build dependencies of component "sdcard"
if(sdcard_needed OR (sdcard IN_LIST components))
    set(sdcard_needed YES)
    # Dependencies:
    set(config_needed YES)
    set(util_needed YES)
    set(drv_spi_needed YES)
    set(protothreads_needed YES)
    set(hal_gpio_needed YES)
endif()

# Build dependencies of component "log"
if(log_needed OR (log IN_LIST components))
    set(log_needed YES)
    # Dependencies:
    set(log_ctrl_needed YES)
    set(fprintf_needed YES)
    set(memobj_needed YES)
    set(util_needed YES)
    set(cli_api_needed YES)
    set(log_api_needed YES)
    set(section_vars_needed YES)
    set(atomic_needed YES)
    set(fds_needed YES)
    set(ringbuf_needed YES)
endif()

# Build dependencies of component "libuarte_async"
if(libuarte_async_needed OR (libuarte_async IN_LIST components))
    set(libuarte_async_needed YES)
    # Dependencies:
    set(hal_uarte_needed YES)
    set(util_needed YES)
    set(nrfx_rtc_needed YES)
    set(queue_needed YES)
    set(balloc_needed YES)
    set(nrfx_timer_needed YES)
    set(libuarte_needed YES)
    set(nrfx_ppi_needed YES)
    set(hal_uart_needed YES)
    set(config_needed YES)
    set(nrfx_clock_needed YES)
    set(log_api_needed YES)
endif()

# Build dependencies of component "drv_usbd"
if(drv_usbd_needed OR (drv_usbd IN_LIST components))
    set(drv_usbd_needed YES)
    # Dependencies:
    set(nrfx_usbd_needed YES)
    set(nrfx_needed YES)
endif()

# Build dependencies of component "drv_power"
if(drv_power_needed OR (drv_power IN_LIST components))
    set(drv_power_needed YES)
    # Dependencies:
    set(nrfx_power_needed YES)
    set(util_needed YES)
    set(softdevice_common_needed YES)
    set(drv_clock_needed YES)
endif()

# Build dependencies of component "cli_uart"
if(cli_uart_needed OR (cli_uart IN_LIST components))
    set(cli_uart_needed YES)
    # Dependencies:
    set(cli_api_needed YES)
    set(drv_uart_needed YES)
    set(timer_needed YES)
    set(ringbuf_needed YES)
    set(util_needed YES)
    set(log_api_needed YES)
endif()

# Build dependencies of component "cli_rtt"
if(cli_rtt_needed OR (cli_rtt IN_LIST components))
    set(cli_rtt_needed YES)
    # Dependencies:
    set(cli_api_needed YES)
    set(timer_needed YES)
    set(util_needed YES)
    set(segger_rtt_needed YES)
    set(delay_needed YES)
endif()

# Build dependencies of component "cli_ble_uart"
if(cli_ble_uart_needed OR (cli_ble_uart IN_LIST components))
    set(cli_ble_uart_needed YES)
    # Dependencies:
    set(softdevice_needed YES)
    set(timer_needed YES)
    set(cli_api_needed YES)
    set(util_needed YES)
    set(ble_gatt_needed YES)
    set(ringbuf_needed YES)
    set(log_api_needed YES)
endif()

# Build dependencies of component "button"
if(button_needed OR (button IN_LIST components))
    set(button_needed YES)
    # Dependencies:
    set(drv_gpiote_needed YES)
    set(timer_needed YES)
    set(util_needed YES)
    set(button_api_needed YES)
endif()

# Build dependencies of component "bsp_nfc"
if(bsp_nfc_needed OR (bsp_nfc IN_LIST components))
    set(bsp_nfc_needed YES)
    # Dependencies:
    set(util_needed YES)
    set(bsp_api_needed YES)
    set(mdk_needed YES)
endif()

# Build dependencies of component "bsp_cli"
if(bsp_cli_needed OR (bsp_cli IN_LIST components))
    set(bsp_cli_needed YES)
    # Dependencies:
    set(cli_api_needed YES)
    set(bsp_api_needed YES)
endif()

# Build dependencies of component "bsp_btn_ble"
if(bsp_btn_ble_needed OR (bsp_btn_ble IN_LIST components))
    set(bsp_btn_ble_needed YES)
    # Dependencies:
    set(softdevice_needed YES)
    set(bsp_api_needed YES)
    set(softdevice_common_needed YES)
endif()

# Build dependencies of component "bsp_btn_ant"
if(bsp_btn_ant_needed OR (bsp_btn_ant IN_LIST components))
    set(bsp_btn_ant_needed YES)
    # Dependencies:
    set(util_needed YES)
    set(softdevice_common_needed YES)
    set(bsp_api_needed YES)
endif()

# Build dependencies of component "bsp"
if(bsp_needed OR (bsp IN_LIST components))
    set(bsp_needed YES)
    # Dependencies:
    set(timer_needed YES)
    set(util_needed YES)
    set(boards_needed YES)
    set(mdk_needed YES)
    set(bsp_api_needed YES)
    set(hal_gpio_needed YES)
    set(button_api_needed YES)
    set(softdevice_needed YES)
endif()

# Build dependencies of component "block_dev_qspi"
if(block_dev_qspi_needed OR (block_dev_qspi IN_LIST components))
    set(block_dev_qspi_needed YES)
    # Dependencies:
    set(log_api_needed YES)
    set(block_dev_needed YES)
    set(drv_qspi_needed YES)
    set(util_needed YES)
endif()

# Build dependencies of component "app_uart_fifo"
if(app_uart_fifo_needed OR (app_uart_fifo IN_LIST components))
    set(app_uart_fifo_needed YES)
    # Dependencies:
    set(app_uart_api_needed YES)
    set(drv_uart_needed YES)
    set(util_needed YES)
    set(fifo_needed YES)
endif()

# Build dependencies of component "app_uart_blocking"
if(app_uart_blocking_needed OR (app_uart_blocking IN_LIST components))
    set(app_uart_blocking_needed YES)
    # Dependencies:
    set(drv_uart_needed YES)
    set(util_needed YES)
    set(app_uart_api_needed YES)
endif()

# Build dependencies of component "pwr_mgmt"
if(pwr_mgmt_needed OR (pwr_mgmt IN_LIST components))
    set(pwr_mgmt_needed YES)
    # Dependencies:
    set(section_iter_needed YES)
    set(util_needed YES)
    set(scheduler_needed YES)
    set(timer_needed YES)
    set(softdevice_needed YES)
    set(mutex_needed YES)
    set(softdevice_common_needed YES)
    set(mdk_needed YES)
    set(hal_power_needed YES)
    set(hal_gpio_needed YES)
    set(log_ctrl_needed YES)
    set(log_api_needed YES)
endif()

# Build dependencies of component "nrfx_usbd"
if(nrfx_usbd_needed OR (nrfx_usbd IN_LIST components))
    set(nrfx_usbd_needed YES)
    # Dependencies:
    set(hal_usbd_needed YES)
    set(nrfx_needed YES)
    set(nrfx_systick_needed YES)
endif()

# Build dependencies of component "log_default_backends"
if(log_default_backends_needed OR (log_default_backends IN_LIST components))
    set(log_default_backends_needed YES)
    # Dependencies:
    set(config_needed YES)
    set(util_needed YES)
    set(log_api_needed YES)
    set(log_backend_rtt_needed YES)
    set(log_backend_uart_needed YES)
    set(log_ctrl_needed YES)
endif()

# Build dependencies of component "libuarte"
if(libuarte_needed OR (libuarte IN_LIST components))
    set(libuarte_needed YES)
    # Dependencies:
    set(hal_uarte_needed YES)
    set(util_needed YES)
    set(nrfx_timer_needed YES)
    set(nrfx_ppi_needed YES)
    set(config_needed YES)
    set(hal_gpio_needed YES)
    set(log_api_needed YES)
endif()

# Build dependencies of component "hardfault"
if(hardfault_needed OR (hardfault IN_LIST components))
    set(hardfault_needed YES)
    # Dependencies:
    set(mdk_needed YES)
    set(softdevice_needed YES)
    set(util_needed YES)
    set(log_ctrl_needed YES)
    set(log_api_needed YES)
endif()

# Build dependencies of component "fds"
if(fds_needed OR (fds IN_LIST components))
    set(fds_needed YES)
    # Dependencies:
    set(util_needed YES)
    set(config_needed YES)
    set(softdevice_needed YES)
    set(crc16_needed YES)
    set(fstorage_needed YES)
    set(atomic_needed YES)
    set(atomic_fifo_needed YES)
endif()

# Build dependencies of component "drv_uart"
if(drv_uart_needed OR (drv_uart IN_LIST components))
    set(drv_uart_needed YES)
    # Dependencies:
    set(nrfx_uarte_needed YES)
    set(nrfx_uart_needed YES)
    set(nrfx_needed YES)
endif()

# Build dependencies of component "drv_twi"
if(drv_twi_needed OR (drv_twi IN_LIST components))
    set(drv_twi_needed YES)
    # Dependencies:
    set(nrfx_twim_needed YES)
    set(nrfx_twi_needed YES)
    set(nrfx_needed YES)
    set(hal_gpio_needed YES)
    set(delay_needed YES)
endif()

# Build dependencies of component "drv_timer"
if(drv_timer_needed OR (drv_timer IN_LIST components))
    set(drv_timer_needed YES)
    # Dependencies:
    set(nrfx_timer_needed YES)
endif()

# Build dependencies of component "drv_spi"
if(drv_spi_needed OR (drv_spi IN_LIST components))
    set(drv_spi_needed YES)
    # Dependencies:
    set(nrfx_spi_needed YES)
    set(nrfx_spim_needed YES)
    set(nrfx_needed YES)
endif()

# Build dependencies of component "drv_rtc"
if(drv_rtc_needed OR (drv_rtc IN_LIST components))
    set(drv_rtc_needed YES)
    # Dependencies:
    set(nrfx_rtc_needed YES)
endif()

# Build dependencies of component "drv_qspi"
if(drv_qspi_needed OR (drv_qspi IN_LIST components))
    set(drv_qspi_needed YES)
    # Dependencies:
    set(nrfx_qspi_needed YES)
endif()

# Build dependencies of component "drv_ppi"
if(drv_ppi_needed OR (drv_ppi IN_LIST components))
    set(drv_ppi_needed YES)
    # Dependencies:
    set(nrfx_ppi_needed YES)
endif()

# Build dependencies of component "drv_gpiote"
if(drv_gpiote_needed OR (drv_gpiote IN_LIST components))
    set(drv_gpiote_needed YES)
    # Dependencies:
    set(nrfx_gpiote_needed YES)
endif()

# Build dependencies of component "drv_clock"
if(drv_clock_needed OR (drv_clock IN_LIST components))
    set(drv_clock_needed YES)
    # Dependencies:
    set(nrfx_clock_needed YES)
    set(util_needed YES)
    set(softdevice_common_needed YES)
    set(log_api_needed YES)
endif()

# Build dependencies of component "cli_api"
if(cli_api_needed OR (cli_api IN_LIST components))
    set(cli_api_needed YES)
    # Dependencies:
    set(memobj_needed YES)
    set(section_vars_needed YES)
    set(util_needed YES)
    set(fprintf_needed YES)
    set(queue_needed YES)
    set(log_ctrl_needed YES)
    set(task_manager_needed YES)
    set(config_needed YES)
endif()

# Build dependencies of component "bsp_api"
if(bsp_api_needed OR (bsp_api IN_LIST components))
    set(bsp_api_needed YES)
    # Dependencies:
    set(boards_needed YES)
    set(button_api_needed YES)
endif()

# Build dependencies of component "ble_conn_params"
if(ble_conn_params_needed OR (ble_conn_params IN_LIST components))
    set(ble_conn_params_needed YES)
    # Dependencies:
    set(util_needed YES)
    set(softdevice_needed YES)
    set(timer_needed YES)
    set(softdevice_common_needed YES)
    set(ble_conn_state_needed YES)
    set(mdk_needed YES)
endif()

# Build dependencies of component "app_error_handler"
if(app_error_handler_needed OR (app_error_handler IN_LIST components))
    set(app_error_handler_needed YES)
    # Dependencies:
    set(util_needed YES)
    set(mdk_needed YES)
    set(softdevice_needed YES)
    set(strerror_needed YES)
    set(log_ctrl_needed YES)
    set(log_api_needed YES)
endif()

# Build dependencies of component "timer"
if(timer_needed OR (timer IN_LIST components))
    set(timer_needed YES)
    # Dependencies:
    set(config_needed YES)
    set(util_needed YES)
    set(mdk_needed YES)
    set(sortlist_needed YES)
    set(log_api_needed YES)
    set(scheduler_needed YES)
    set(softdevice_needed YES)
    set(delay_needed YES)
endif()

# Build dependencies of component "nrfx_uarte"
if(nrfx_uarte_needed OR (nrfx_uarte IN_LIST components))
    set(nrfx_uarte_needed YES)
    # Dependencies:
    set(hal_uarte_needed YES)
    set(nrfx_needed YES)
    set(hal_gpio_needed YES)
    set(prs_needed YES)
endif()

# Build dependencies of component "nrfx_uart"
if(nrfx_uart_needed OR (nrfx_uart IN_LIST components))
    set(nrfx_uart_needed YES)
    # Dependencies:
    set(hal_uart_needed YES)
    set(nrfx_needed YES)
    set(hal_gpio_needed YES)
    set(prs_needed YES)
endif()

# Build dependencies of component "nrfx_twim"
if(nrfx_twim_needed OR (nrfx_twim IN_LIST components))
    set(nrfx_twim_needed YES)
    # Dependencies:
    set(hal_twim_needed YES)
    set(nrfx_needed YES)
    set(hal_gpio_needed YES)
    set(prs_needed YES)
endif()

# Build dependencies of component "nrfx_twi"
if(nrfx_twi_needed OR (nrfx_twi IN_LIST components))
    set(nrfx_twi_needed YES)
    # Dependencies:
    set(hal_twi_needed YES)
    set(nrfx_needed YES)
    set(hal_gpio_needed YES)
    set(prs_needed YES)
endif()

# Build dependencies of component "nrfx_timer"
if(nrfx_timer_needed OR (nrfx_timer IN_LIST components))
    set(nrfx_timer_needed YES)
    # Dependencies:
    set(hal_timer_needed YES)
    set(nrfx_needed YES)
endif()

# Build dependencies of component "nrfx_systick"
if(nrfx_systick_needed OR (nrfx_systick IN_LIST components))
    set(nrfx_systick_needed YES)
    # Dependencies:
    set(hal_systick_needed YES)
    set(nrfx_needed YES)
endif()

# Build dependencies of component "nrfx_spim"
if(nrfx_spim_needed OR (nrfx_spim IN_LIST components))
    set(nrfx_spim_needed YES)
    # Dependencies:
    set(hal_spim_needed YES)
    set(nrfx_needed YES)
    set(hal_gpio_needed YES)
    set(prs_needed YES)
endif()

# Build dependencies of component "nrfx_spi"
if(nrfx_spi_needed OR (nrfx_spi IN_LIST components))
    set(nrfx_spi_needed YES)
    # Dependencies:
    set(hal_spi_needed YES)
    set(nrfx_needed YES)
    set(hal_gpio_needed YES)
    set(prs_needed YES)
endif()

# Build dependencies of component "nrfx_rtc"
if(nrfx_rtc_needed OR (nrfx_rtc IN_LIST components))
    set(nrfx_rtc_needed YES)
    # Dependencies:
    set(hal_rtc_needed YES)
    set(nrfx_needed YES)
endif()

# Build dependencies of component "nrfx_qspi"
if(nrfx_qspi_needed OR (nrfx_qspi IN_LIST components))
    set(nrfx_qspi_needed YES)
    # Dependencies:
    set(hal_qspi_needed YES)
    set(nrfx_needed YES)
endif()

# Build dependencies of component "nrfx_ppi"
if(nrfx_ppi_needed OR (nrfx_ppi IN_LIST components))
    set(nrfx_ppi_needed YES)
    # Dependencies:
    set(hal_ppi_needed YES)
    set(nrfx_needed YES)
endif()

# Build dependencies of component "nrfx_power"
if(nrfx_power_needed OR (nrfx_power IN_LIST components))
    set(nrfx_power_needed YES)
    # Dependencies:
    set(hal_power_needed YES)
    set(nrfx_power_clock_needed YES)
    set(nrfx_needed YES)
    set(hal_regulators_needed YES)
endif()

# Build dependencies of component "nrfx_gpiote"
if(nrfx_gpiote_needed OR (nrfx_gpiote IN_LIST components))
    set(nrfx_gpiote_needed YES)
    # Dependencies:
    set(hal_gpio_needed YES)
    set(hal_gpiote_needed YES)
    set(nrfx_needed YES)
    set(util_needed YES)
endif()

# Build dependencies of component "nrfx_clock"
if(nrfx_clock_needed OR (nrfx_clock IN_LIST components))
    set(nrfx_clock_needed YES)
    # Dependencies:
    set(hal_clock_needed YES)
    set(nrfx_power_clock_needed YES)
    set(nrfx_needed YES)
endif()

# Build dependencies of component "log_ctrl"
if(log_ctrl_needed OR (log_ctrl IN_LIST components))
    set(log_ctrl_needed YES)
    # Dependencies:
    set(config_needed YES)
    set(util_needed YES)
    set(log_api_needed YES)
    set(memobj_needed YES)
    set(section_vars_needed YES)
endif()

# Build dependencies of component "fstorage"
if(fstorage_needed OR (fstorage IN_LIST components))
    set(fstorage_needed YES)
    # Dependencies:
    set(section_vars_needed YES)
    set(util_needed YES)
    set(config_needed YES)
    set(log_api_needed YES)
    set(atomic_needed YES)
    set(hal_nvmc_needed YES)
    set(softdevice_needed YES)
    set(softdevice_common_needed YES)
    set(atomic_fifo_needed YES)
endif()

# Build dependencies of component "button_api"
if(button_api_needed OR (button_api IN_LIST components))
    set(button_api_needed YES)
    # Dependencies:
    set(util_needed YES)
    set(mdk_needed YES)
    set(hal_gpio_needed YES)
endif()

# Build dependencies of component "boards"
if(boards_needed OR (boards IN_LIST components))
    set(boards_needed YES)
    # Dependencies:
    set(util_needed YES)
    set(hal_gpio_needed YES)
endif()

# Build dependencies of component "ble_link_ctx_manager"
if(ble_link_ctx_manager_needed OR (ble_link_ctx_manager IN_LIST components))
    set(ble_link_ctx_manager_needed YES)
    # Dependencies:
    set(ble_conn_state_needed YES)
    set(util_needed YES)
endif()

# Build dependencies of component "task_manager"
if(task_manager_needed OR (task_manager IN_LIST components))
    set(task_manager_needed YES)
    # Dependencies:
    set(util_needed YES)
    set(mdk_needed YES)
    set(cli_api_needed YES)
    set(atomic_needed YES)
    set(mpu_needed YES)
    set(log_api_needed YES)
endif()

# Build dependencies of component "prs"
if(prs_needed OR (prs IN_LIST components))
    set(prs_needed YES)
    # Dependencies:
    set(nrfx_needed YES)
endif()

# Build dependencies of component "nrfx_power_clock"
if(nrfx_power_clock_needed OR (nrfx_power_clock IN_LIST components))
    set(nrfx_power_clock_needed YES)
    # Dependencies:
    set(nrfx_needed YES)
endif()

# Build dependencies of component "nrfx_atomic"
if(nrfx_atomic_needed OR (nrfx_atomic IN_LIST components))
    set(nrfx_atomic_needed YES)
    # Dependencies:
    set(nrfx_needed YES)
endif()

# Build dependencies of component "memobj"
if(memobj_needed OR (memobj IN_LIST components))
    set(memobj_needed YES)
    # Dependencies:
    set(balloc_needed YES)
    set(util_needed YES)
    set(atomic_needed YES)
endif()

# Build dependencies of component "hal_usbd"
if(hal_usbd_needed OR (hal_usbd IN_LIST components))
    set(hal_usbd_needed YES)
    # Dependencies:
    set(nrfx_needed YES)
endif()

# Build dependencies of component "hal_uarte"
if(hal_uarte_needed OR (hal_uarte IN_LIST components))
    set(hal_uarte_needed YES)
    # Dependencies:
    set(nrfx_needed YES)
endif()

# Build dependencies of component "hal_uart"
if(hal_uart_needed OR (hal_uart IN_LIST components))
    set(hal_uart_needed YES)
    # Dependencies:
    set(nrfx_needed YES)
endif()

# Build dependencies of component "hal_twim"
if(hal_twim_needed OR (hal_twim IN_LIST components))
    set(hal_twim_needed YES)
    # Dependencies:
    set(nrfx_needed YES)
endif()

# Build dependencies of component "hal_twi"
if(hal_twi_needed OR (hal_twi IN_LIST components))
    set(hal_twi_needed YES)
    # Dependencies:
    set(nrfx_needed YES)
endif()

# Build dependencies of component "hal_timer"
if(hal_timer_needed OR (hal_timer IN_LIST components))
    set(hal_timer_needed YES)
    # Dependencies:
    set(nrfx_needed YES)
endif()

# Build dependencies of component "hal_systick"
if(hal_systick_needed OR (hal_systick IN_LIST components))
    set(hal_systick_needed YES)
    # Dependencies:
    set(nrfx_needed YES)
endif()

# Build dependencies of component "hal_spim"
if(hal_spim_needed OR (hal_spim IN_LIST components))
    set(hal_spim_needed YES)
    # Dependencies:
    set(nrfx_needed YES)
endif()

# Build dependencies of component "hal_spi"
if(hal_spi_needed OR (hal_spi IN_LIST components))
    set(hal_spi_needed YES)
    # Dependencies:
    set(nrfx_needed YES)
endif()

# Build dependencies of component "hal_rtc"
if(hal_rtc_needed OR (hal_rtc IN_LIST components))
    set(hal_rtc_needed YES)
    # Dependencies:
    set(nrfx_needed YES)
endif()

# Build dependencies of component "hal_regulators"
if(hal_regulators_needed OR (hal_regulators IN_LIST components))
    set(hal_regulators_needed YES)
    # Dependencies:
    set(nrfx_needed YES)
endif()

# Build dependencies of component "hal_qspi"
if(hal_qspi_needed OR (hal_qspi IN_LIST components))
    set(hal_qspi_needed YES)
    # Dependencies:
    set(nrfx_needed YES)
endif()

# Build dependencies of component "hal_ppi"
if(hal_ppi_needed OR (hal_ppi IN_LIST components))
    set(hal_ppi_needed YES)
    # Dependencies:
    set(nrfx_needed YES)
endif()

# Build dependencies of component "hal_power"
if(hal_power_needed OR (hal_power IN_LIST components))
    set(hal_power_needed YES)
    # Dependencies:
    set(nrfx_needed YES)
endif()

# Build dependencies of component "hal_nvmc"
if(hal_nvmc_needed OR (hal_nvmc IN_LIST components))
    set(hal_nvmc_needed YES)
    # Dependencies:
    set(nrfx_needed YES)
endif()

# Build dependencies of component "hal_gpiote"
if(hal_gpiote_needed OR (hal_gpiote IN_LIST components))
    set(hal_gpiote_needed YES)
    # Dependencies:
    set(nrfx_needed YES)
endif()

# Build dependencies of component "hal_gpio"
if(hal_gpio_needed OR (hal_gpio IN_LIST components))
    set(hal_gpio_needed YES)
    # Dependencies:
    set(nrfx_needed YES)
endif()

# Build dependencies of component "hal_clock"
if(hal_clock_needed OR (hal_clock IN_LIST components))
    set(hal_clock_needed YES)
    # Dependencies:
    set(nrfx_needed YES)
endif()

# Build dependencies of component "delay"
if(delay_needed OR (delay IN_LIST components))
    set(delay_needed YES)
    # Dependencies:
    set(nrfx_needed YES)
endif()

# Build dependencies of component "ble_conn_state"
if(ble_conn_state_needed OR (ble_conn_state IN_LIST components))
    set(ble_conn_state_needed YES)
    # Dependencies:
    set(softdevice_needed YES)
    set(atomic_needed YES)
    set(softdevice_common_needed YES)
    set(util_needed YES)
    set(atomic_flags_needed YES)
endif()

# Build dependencies of component "ble_advertising"
if(ble_advertising_needed OR (ble_advertising IN_LIST components))
    set(ble_advertising_needed YES)
    # Dependencies:
    set(softdevice_needed YES)
    set(ble_advdata_needed YES)
    set(softdevice_common_needed YES)
    set(util_needed YES)
    set(log_api_needed YES)
endif()

# Build dependencies of component "sortlist"
if(sortlist_needed OR (sortlist IN_LIST components))
    set(sortlist_needed YES)
    # Dependencies:
    set(config_needed YES)
    set(util_needed YES)
    set(log_api_needed YES)
endif()

# Build dependencies of component "softdevice_common"
if(softdevice_common_needed OR (softdevice_common IN_LIST components))
    set(softdevice_common_needed YES)
    # Dependencies:
    set(config_needed YES)
    set(section_iter_needed YES)
    set(util_needed YES)
    set(softdevice_needed YES)
endif()

# Build dependencies of component "queue"
if(queue_needed OR (queue IN_LIST components))
    set(queue_needed YES)
    # Dependencies:
    set(util_needed YES)
    set(section_vars_needed YES)
    set(log_api_needed YES)
    set(cli_api_needed YES)
endif()

# Build dependencies of component "nrfx"
if(nrfx_needed OR (nrfx IN_LIST components))
    set(nrfx_needed YES)
    # Dependencies:
    set(config_needed YES)
    set(util_needed YES)
    set(log_api_needed YES)
    set(mdk_needed YES)
endif()

# Build dependencies of component "mpu"
if(mpu_needed OR (mpu IN_LIST components))
    set(mpu_needed YES)
    # Dependencies:
    set(util_needed YES)
    set(config_needed YES)
    set(cli_api_needed YES)
    set(mdk_needed YES)
    set(log_api_needed YES)
endif()

# Build dependencies of component "block_dev_ram"
if(block_dev_ram_needed OR (block_dev_ram IN_LIST components))
    set(block_dev_ram_needed YES)
    # Dependencies:
    set(log_api_needed YES)
    set(block_dev_needed YES)
    set(util_needed YES)
endif()

# Build dependencies of component "block_dev_empty"
if(block_dev_empty_needed OR (block_dev_empty IN_LIST components))
    set(block_dev_empty_needed YES)
    # Dependencies:
    set(log_api_needed YES)
    set(block_dev_needed YES)
    set(util_needed YES)
endif()

# Build dependencies of component "ble_scan"
if(ble_scan_needed OR (ble_scan IN_LIST components))
    set(ble_scan_needed YES)
    # Dependencies:
    set(softdevice_needed YES)
    set(config_needed YES)
    set(util_needed YES)
    set(ble_advdata_needed YES)
    set(log_api_needed YES)
endif()

# Build dependencies of component "ble_gatt"
if(ble_gatt_needed OR (ble_gatt IN_LIST components))
    set(ble_gatt_needed YES)
    # Dependencies:
    set(softdevice_needed YES)
    set(config_needed YES)
    set(util_needed YES)
    set(log_api_needed YES)
    set(strerror_needed YES)
endif()

# Build dependencies of component "ble_db_discovery"
if(ble_db_discovery_needed OR (ble_db_discovery IN_LIST components))
    set(ble_db_discovery_needed YES)
    # Dependencies:
    set(softdevice_needed YES)
    set(ble_common_needed YES)
    set(util_needed YES)
    set(log_api_needed YES)
endif()

# Build dependencies of component "balloc"
if(balloc_needed OR (balloc IN_LIST components))
    set(balloc_needed YES)
    # Dependencies:
    set(config_needed YES)
    set(util_needed YES)
    set(section_vars_needed YES)
    set(log_api_needed YES)
    set(cli_api_needed YES)
endif()

# Build dependencies of component "atomic_fifo"
if(atomic_fifo_needed OR (atomic_fifo IN_LIST components))
    set(atomic_fifo_needed YES)
    # Dependencies:
    set(config_needed YES)
    set(util_needed YES)
    set(log_api_needed YES)
    set(mdk_needed YES)
endif()

# Build dependencies of component "section_iter"
if(section_iter_needed OR (section_iter IN_LIST components))
    set(section_iter_needed YES)
    # Dependencies:
    set(util_needed YES)
    set(section_vars_needed YES)
endif()

# Build dependencies of component "ringbuf"
if(ringbuf_needed OR (ringbuf IN_LIST components))
    set(ringbuf_needed YES)
    # Dependencies:
    set(atomic_needed YES)
    set(util_needed YES)
endif()

# Build dependencies of component "mutex"
if(mutex_needed OR (mutex IN_LIST components))
    set(mutex_needed YES)
    # Dependencies:
    set(atomic_needed YES)
    set(mdk_needed YES)
    set(util_needed YES)
endif()

# Build dependencies of component "log_api"
if(log_api_needed OR (log_api IN_LIST components))
    set(log_api_needed YES)
    # Dependencies:
    set(util_needed YES)
    set(section_vars_needed YES)
    set(strerror_needed YES)
    set(config_needed YES)
    set(mdk_needed YES)
    set(softdevice_needed YES)
endif()

# Build dependencies of component "fatfs"
if(fatfs_needed OR (fatfs IN_LIST components))
    set(fatfs_needed YES)
    # Dependencies:
    set(block_dev_needed YES)
endif()

# Build dependencies of component "atomic_flags"
if(atomic_flags_needed OR (atomic_flags IN_LIST components))
    set(atomic_flags_needed YES)
    # Dependencies:
    set(util_needed YES)
    set(atomic_needed YES)
    set(mdk_needed YES)
endif()

# Build dependencies of component "strerror"
if(strerror_needed OR (strerror IN_LIST components))
    set(strerror_needed YES)
    # Dependencies:
    set(util_needed YES)
endif()

# Build dependencies of component "segger_rtt"
if(segger_rtt_needed OR (segger_rtt IN_LIST components))
    set(segger_rtt_needed YES)
    # Dependencies:
    set(util_needed YES)
    set(config_needed YES)
endif()

# Build dependencies of component "section_vars"
if(section_vars_needed OR (section_vars IN_LIST components))
    set(section_vars_needed YES)
    # Dependencies:
    set(util_needed YES)
endif()

# Build dependencies of component "scheduler"
if(scheduler_needed OR (scheduler IN_LIST components))
    set(scheduler_needed YES)
    # Dependencies:
    set(util_needed YES)
    set(config_needed YES)
    set(softdevice_needed YES)
endif()

# Build dependencies of component "fprintf"
if(fprintf_needed OR (fprintf IN_LIST components))
    set(fprintf_needed YES)
    # Dependencies:
    set(util_needed YES)
endif()

# Build dependencies of component "fifo"
if(fifo_needed OR (fifo IN_LIST components))
    set(fifo_needed YES)
    # Dependencies:
    set(util_needed YES)
endif()

# Build dependencies of component "crc16"
if(crc16_needed OR (crc16 IN_LIST components))
    set(crc16_needed YES)
    # Dependencies:
    set(util_needed YES)
endif()

# Build dependencies of component "block_dev"
if(block_dev_needed OR (block_dev IN_LIST components))
    set(block_dev_needed YES)
    # Dependencies:
    set(util_needed YES)
endif()

# Build dependencies of component "ble_srv_common"
if(ble_srv_common_needed OR (ble_srv_common IN_LIST components))
    set(ble_srv_common_needed YES)
    # Dependencies:
    set(softdevice_needed YES)
    set(util_needed YES)
endif()

# Build dependencies of component "ble_racp"
if(ble_racp_needed OR (ble_racp IN_LIST components))
    set(ble_racp_needed YES)
    # Dependencies:
    set(softdevice_needed YES)
    set(util_needed YES)
endif()

# Build dependencies of component "ble_qwr"
if(ble_qwr_needed OR (ble_qwr IN_LIST components))
    set(ble_qwr_needed YES)
    # Dependencies:
    set(softdevice_needed YES)
    set(util_needed YES)
endif()

# Build dependencies of component "ble_dtm"
if(ble_dtm_needed OR (ble_dtm IN_LIST components))
    set(ble_dtm_needed YES)
    # Dependencies:
    set(mdk_needed YES)
    set(util_needed YES)
endif()

# Build dependencies of component "ble_advdata"
if(ble_advdata_needed OR (ble_advdata IN_LIST components))
    set(ble_advdata_needed YES)
    # Dependencies:
    set(softdevice_needed YES)
    set(util_needed YES)
endif()

# Build dependencies of component "atomic"
if(atomic_needed OR (atomic IN_LIST components))
    set(atomic_needed YES)
    # Dependencies:
    set(util_needed YES)
endif()

# Build dependencies of component "app_uart_api"
if(app_uart_api_needed OR (app_uart_api IN_LIST components))
    set(app_uart_api_needed YES)
    # Dependencies:
    set(util_needed YES)
endif()

# Build dependencies of component "util"
if(util_needed OR (util IN_LIST components))
    set(util_needed YES)
    # Dependencies:
    set(config_needed YES)
    set(mdk_needed YES)
    set(softdevice_needed YES)
endif()

# Build dependencies of component "ble_radio_notification"
if(ble_radio_notification_needed OR (ble_radio_notification IN_LIST components))
    set(ble_radio_notification_needed YES)
    # Dependencies:
    set(softdevice_needed YES)
endif()

# Build dependencies of component "ble_common"
if(ble_common_needed OR (ble_common IN_LIST components))
    set(ble_common_needed YES)
    # Dependencies:
    set(softdevice_needed YES)
    set(config_needed YES)
endif()

# Build dependencies of component "softdevice"
if(softdevice_needed OR (softdevice IN_LIST components))
    set(softdevice_needed YES)
    # This is actually an alias:
    set(${softdevice}_needed YES)
endif()

# Build dependencies of component "s140"
if(s140_needed OR (s140 IN_LIST components))
    set(s140_needed YES)
    # Dependencies:
    set(mdk_needed YES)
endif()

# Build dependencies of component "s132"
if(s132_needed OR (s132 IN_LIST components))
    set(s132_needed YES)
    # Dependencies:
    set(mdk_needed YES)
endif()

# Build dependencies of component "s112"
if(s112_needed OR (s112 IN_LIST components))
    set(s112_needed YES)
    # Dependencies:
    set(mdk_needed YES)
endif()

# Build dependencies of component "nosd"
if(nosd_needed OR (nosd IN_LIST components))
    set(nosd_needed YES)
    # Dependencies:
    set(mdk_needed YES)
endif()

# Build dependencies of component "mbr_nrf52840"
if(mbr_nrf52840_needed OR (mbr_nrf52840 IN_LIST components))
    set(mbr_nrf52840_needed YES)
    # Dependencies:
    set(mdk_needed YES)
endif()

# Build dependencies of component "mbr_nrf52832"
if(mbr_nrf52832_needed OR (mbr_nrf52832 IN_LIST components))
    set(mbr_nrf52832_needed YES)
    # Dependencies:
    set(mdk_needed YES)
endif()

# Build dependencies of component "mbr_nrf52810"
if(mbr_nrf52810_needed OR (mbr_nrf52810 IN_LIST components))
    set(mbr_nrf52810_needed YES)
    # Dependencies:
    set(mdk_needed YES)
endif()

# Build dependencies of component "mdk"
if(mdk_needed OR (mdk IN_LIST components))
    set(mdk_needed YES)
    # This is actually an alias:
    set(${mdk}_needed YES)
endif()

# Build dependencies of component "nrf52840"
if(nrf52840_needed OR (nrf52840 IN_LIST components))
    set(nrf52840_needed YES)
    # Dependencies:
    set(cmsis_needed YES)
endif()

# Build dependencies of component "nrf52832"
if(nrf52832_needed OR (nrf52832 IN_LIST components))
    set(nrf52832_needed YES)
    # Dependencies:
    set(cmsis_needed YES)
endif()

# Build dependencies of component "nrf52811"
if(nrf52811_needed OR (nrf52811 IN_LIST components))
    set(nrf52811_needed YES)
    # Dependencies:
    set(cmsis_needed YES)
endif()

# Build dependencies of component "nrf52810"
if(nrf52810_needed OR (nrf52810 IN_LIST components))
    set(nrf52810_needed YES)
    # Dependencies:
    set(cmsis_needed YES)
endif()

# Build dependencies of component "utf_converter"
if(utf_converter_needed OR (utf_converter IN_LIST components))
    set(utf_converter_needed YES)
endif()

# Build dependencies of component "protothreads"
if(protothreads_needed OR (protothreads IN_LIST components))
    set(protothreads_needed YES)
endif()

# Build dependencies of component "nrf52840_cfg"
if(nrf52840_cfg_needed OR (nrf52840_cfg IN_LIST components))
    set(nrf52840_cfg_needed YES)
endif()

# Build dependencies of component "fnmatch"
if(fnmatch_needed OR (fnmatch IN_LIST components))
    set(fnmatch_needed YES)
endif()

# Build dependencies of component "cmsis"
if(cmsis_needed OR (cmsis IN_LIST components))
    set(cmsis_needed YES)
endif()

# Declare interface libraries for all components, and collect source files
    
# Interface of component "cmsis"
add_library(${target_name}_cmsis INTERFACE)
target_sources(${target_name}_cmsis INTERFACE
    ${sdk_root}/components/toolchain/cmsis/include/arm_common_tables.h
    ${sdk_root}/components/toolchain/cmsis/include/arm_const_structs.h
    ${sdk_root}/components/toolchain/cmsis/include/arm_math.h
    ${sdk_root}/components/toolchain/cmsis/include/cmsis_armcc.h
    ${sdk_root}/components/toolchain/cmsis/include/cmsis_armcc_V6.h
    ${sdk_root}/components/toolchain/cmsis/include/cmsis_gcc.h
    ${sdk_root}/components/toolchain/cmsis/include/core_cm0.h
    ${sdk_root}/components/toolchain/cmsis/include/core_cm0plus.h
    ${sdk_root}/components/toolchain/cmsis/include/core_cm3.h
    ${sdk_root}/components/toolchain/cmsis/include/core_cm4.h
    ${sdk_root}/components/toolchain/cmsis/include/core_cm7.h
    ${sdk_root}/components/toolchain/cmsis/include/core_cmFunc.h
    ${sdk_root}/components/toolchain/cmsis/include/core_cmInstr.h
    ${sdk_root}/components/toolchain/cmsis/include/core_cmSimd.h
    ${sdk_root}/components/toolchain/cmsis/include/core_sc000.h
    ${sdk_root}/components/toolchain/cmsis/include/core_sc300.h
)
target_include_directories(${target_name}_cmsis INTERFACE
    ${sdk_root}/components/toolchain/cmsis/include
)

# link component to target
if(cmsis_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_cmsis)
endif()

# Interface of component "fnmatch"
add_library(${target_name}_fnmatch INTERFACE)
target_sources(${target_name}_fnmatch INTERFACE
    ${sdk_root}/external/fnmatch/fnmatch.h
)
target_include_directories(${target_name}_fnmatch INTERFACE
    ${sdk_root}/external/fnmatch
)

# link component to target
if(fnmatch_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_fnmatch)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/external/fnmatch/fnmatch.c
    )
endif()

# Interface of component "nrf52840_cfg"
add_library(${target_name}_nrf52840_cfg INTERFACE)
target_sources(${target_name}_nrf52840_cfg INTERFACE
    ${sdk_root}/config/nrf52840/config/sdk_config.h
)
target_include_directories(${target_name}_nrf52840_cfg INTERFACE
    ${sdk_root}/config/nrf52840/config
)

# link component to target
if(nrf52840_cfg_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_nrf52840_cfg)
endif()

# Interface of component "protothreads"
add_library(${target_name}_protothreads INTERFACE)
target_sources(${target_name}_protothreads INTERFACE
    ${sdk_root}/external/protothreads/nrf_pt.h
    ${sdk_root}/external/protothreads/pt-1.4/lc-addrlabels.h
    ${sdk_root}/external/protothreads/pt-1.4/lc-switch.h
    ${sdk_root}/external/protothreads/pt-1.4/lc.h
    ${sdk_root}/external/protothreads/pt-1.4/pt-sem.h
    ${sdk_root}/external/protothreads/pt-1.4/pt.h
)
target_include_directories(${target_name}_protothreads INTERFACE
    ${sdk_root}/external/protothreads
    ${sdk_root}/external/protothreads/pt-1.4
)

# link component to target
if(protothreads_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_protothreads)
endif()

# Interface of component "utf_converter"
add_library(${target_name}_utf_converter INTERFACE)
target_sources(${target_name}_utf_converter INTERFACE
    ${sdk_root}/external/utf_converter/utf.h
)
target_include_directories(${target_name}_utf_converter INTERFACE
    ${sdk_root}/external/utf_converter
)

# link component to target
if(utf_converter_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_utf_converter)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/external/utf_converter/utf.c
    )
endif()

# Interface of component "nrf52810"
add_library(${target_name}_nrf52810 INTERFACE)
target_sources(${target_name}_nrf52810 INTERFACE
    ${sdk_root}/modules/nrfx/mdk/compiler_abstraction.h
    ${sdk_root}/modules/nrfx/mdk/nrf.h
    ${sdk_root}/modules/nrfx/mdk/nrf51.h
    ${sdk_root}/modules/nrfx/mdk/nrf51422_peripherals.h
    ${sdk_root}/modules/nrfx/mdk/nrf51801_peripherals.h
    ${sdk_root}/modules/nrfx/mdk/nrf51802_peripherals.h
    ${sdk_root}/modules/nrfx/mdk/nrf51822_peripherals.h
    ${sdk_root}/modules/nrfx/mdk/nrf51824_peripherals.h
    ${sdk_root}/modules/nrfx/mdk/nrf51_bitfields.h
    ${sdk_root}/modules/nrfx/mdk/nrf51_deprecated.h
    ${sdk_root}/modules/nrfx/mdk/nrf51_peripherals.h
    ${sdk_root}/modules/nrfx/mdk/nrf51_to_nrf52.h
    ${sdk_root}/modules/nrfx/mdk/nrf51_to_nrf52810.h
    ${sdk_root}/modules/nrfx/mdk/nrf51_to_nrf52840.h
    ${sdk_root}/modules/nrfx/mdk/nrf52.h
    ${sdk_root}/modules/nrfx/mdk/nrf52810.h
    ${sdk_root}/modules/nrfx/mdk/nrf52810_bitfields.h
    ${sdk_root}/modules/nrfx/mdk/nrf52810_name_change.h
    ${sdk_root}/modules/nrfx/mdk/nrf52810_peripherals.h
    ${sdk_root}/modules/nrfx/mdk/nrf52810_to_nrf52811.h
    ${sdk_root}/modules/nrfx/mdk/nrf52811.h
    ${sdk_root}/modules/nrfx/mdk/nrf52811_bitfields.h
    ${sdk_root}/modules/nrfx/mdk/nrf52811_peripherals.h
    ${sdk_root}/modules/nrfx/mdk/nrf52832_peripherals.h
    ${sdk_root}/modules/nrfx/mdk/nrf52840.h
    ${sdk_root}/modules/nrfx/mdk/nrf52840_bitfields.h
    ${sdk_root}/modules/nrfx/mdk/nrf52840_peripherals.h
    ${sdk_root}/modules/nrfx/mdk/nrf52_bitfields.h
    ${sdk_root}/modules/nrfx/mdk/nrf52_name_change.h
    ${sdk_root}/modules/nrfx/mdk/nrf52_to_nrf52810.h
    ${sdk_root}/modules/nrfx/mdk/nrf52_to_nrf52840.h
    ${sdk_root}/modules/nrfx/mdk/nrf9160.h
    ${sdk_root}/modules/nrfx/mdk/nrf9160_bitfields.h
    ${sdk_root}/modules/nrfx/mdk/nrf9160_peripherals.h
    ${sdk_root}/modules/nrfx/mdk/nrf_peripherals.h
    ${sdk_root}/modules/nrfx/mdk/startup_config.h
    ${sdk_root}/modules/nrfx/mdk/system_nrf51.h
    ${sdk_root}/modules/nrfx/mdk/system_nrf52.h
    ${sdk_root}/modules/nrfx/mdk/system_nrf52810.h
    ${sdk_root}/modules/nrfx/mdk/system_nrf52811.h
    ${sdk_root}/modules/nrfx/mdk/system_nrf52840.h
    ${sdk_root}/modules/nrfx/mdk/system_nrf9160.h
)
target_include_directories(${target_name}_nrf52810 INTERFACE
    ${sdk_root}/modules/nrfx/mdk
)
target_link_libraries(${target_name}_nrf52810 INTERFACE
    ${target_name}_cmsis
)

# link component to target
if(nrf52810_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_nrf52810)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/modules/nrfx/mdk/gcc_startup_nrf52810.S
        ${sdk_root}/modules/nrfx/mdk/system_nrf52810.c
    )
endif()

# Interface of component "nrf52811"
add_library(${target_name}_nrf52811 INTERFACE)
target_sources(${target_name}_nrf52811 INTERFACE
    ${sdk_root}/modules/nrfx/mdk/compiler_abstraction.h
    ${sdk_root}/modules/nrfx/mdk/nrf.h
    ${sdk_root}/modules/nrfx/mdk/nrf51.h
    ${sdk_root}/modules/nrfx/mdk/nrf51422_peripherals.h
    ${sdk_root}/modules/nrfx/mdk/nrf51801_peripherals.h
    ${sdk_root}/modules/nrfx/mdk/nrf51802_peripherals.h
    ${sdk_root}/modules/nrfx/mdk/nrf51822_peripherals.h
    ${sdk_root}/modules/nrfx/mdk/nrf51824_peripherals.h
    ${sdk_root}/modules/nrfx/mdk/nrf51_bitfields.h
    ${sdk_root}/modules/nrfx/mdk/nrf51_deprecated.h
    ${sdk_root}/modules/nrfx/mdk/nrf51_peripherals.h
    ${sdk_root}/modules/nrfx/mdk/nrf51_to_nrf52.h
    ${sdk_root}/modules/nrfx/mdk/nrf51_to_nrf52810.h
    ${sdk_root}/modules/nrfx/mdk/nrf51_to_nrf52840.h
    ${sdk_root}/modules/nrfx/mdk/nrf52.h
    ${sdk_root}/modules/nrfx/mdk/nrf52810.h
    ${sdk_root}/modules/nrfx/mdk/nrf52810_bitfields.h
    ${sdk_root}/modules/nrfx/mdk/nrf52810_name_change.h
    ${sdk_root}/modules/nrfx/mdk/nrf52810_peripherals.h
    ${sdk_root}/modules/nrfx/mdk/nrf52810_to_nrf52811.h
    ${sdk_root}/modules/nrfx/mdk/nrf52811.h
    ${sdk_root}/modules/nrfx/mdk/nrf52811_bitfields.h
    ${sdk_root}/modules/nrfx/mdk/nrf52811_peripherals.h
    ${sdk_root}/modules/nrfx/mdk/nrf52832_peripherals.h
    ${sdk_root}/modules/nrfx/mdk/nrf52840.h
    ${sdk_root}/modules/nrfx/mdk/nrf52840_bitfields.h
    ${sdk_root}/modules/nrfx/mdk/nrf52840_peripherals.h
    ${sdk_root}/modules/nrfx/mdk/nrf52_bitfields.h
    ${sdk_root}/modules/nrfx/mdk/nrf52_name_change.h
    ${sdk_root}/modules/nrfx/mdk/nrf52_to_nrf52810.h
    ${sdk_root}/modules/nrfx/mdk/nrf52_to_nrf52840.h
    ${sdk_root}/modules/nrfx/mdk/nrf9160.h
    ${sdk_root}/modules/nrfx/mdk/nrf9160_bitfields.h
    ${sdk_root}/modules/nrfx/mdk/nrf9160_peripherals.h
    ${sdk_root}/modules/nrfx/mdk/nrf_peripherals.h
    ${sdk_root}/modules/nrfx/mdk/startup_config.h
    ${sdk_root}/modules/nrfx/mdk/system_nrf51.h
    ${sdk_root}/modules/nrfx/mdk/system_nrf52.h
    ${sdk_root}/modules/nrfx/mdk/system_nrf52810.h
    ${sdk_root}/modules/nrfx/mdk/system_nrf52811.h
    ${sdk_root}/modules/nrfx/mdk/system_nrf52840.h
    ${sdk_root}/modules/nrfx/mdk/system_nrf9160.h
)
target_include_directories(${target_name}_nrf52811 INTERFACE
    ${sdk_root}/modules/nrfx/mdk
)
target_link_libraries(${target_name}_nrf52811 INTERFACE
    ${target_name}_cmsis
)

# link component to target
if(nrf52811_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_nrf52811)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/modules/nrfx/mdk/gcc_startup_nrf52811.S
        ${sdk_root}/modules/nrfx/mdk/system_nrf52811.c
    )
endif()

# Interface of component "nrf52832"
add_library(${target_name}_nrf52832 INTERFACE)
target_sources(${target_name}_nrf52832 INTERFACE
    ${sdk_root}/modules/nrfx/mdk/compiler_abstraction.h
    ${sdk_root}/modules/nrfx/mdk/nrf.h
    ${sdk_root}/modules/nrfx/mdk/nrf51.h
    ${sdk_root}/modules/nrfx/mdk/nrf51422_peripherals.h
    ${sdk_root}/modules/nrfx/mdk/nrf51801_peripherals.h
    ${sdk_root}/modules/nrfx/mdk/nrf51802_peripherals.h
    ${sdk_root}/modules/nrfx/mdk/nrf51822_peripherals.h
    ${sdk_root}/modules/nrfx/mdk/nrf51824_peripherals.h
    ${sdk_root}/modules/nrfx/mdk/nrf51_bitfields.h
    ${sdk_root}/modules/nrfx/mdk/nrf51_deprecated.h
    ${sdk_root}/modules/nrfx/mdk/nrf51_peripherals.h
    ${sdk_root}/modules/nrfx/mdk/nrf51_to_nrf52.h
    ${sdk_root}/modules/nrfx/mdk/nrf51_to_nrf52810.h
    ${sdk_root}/modules/nrfx/mdk/nrf51_to_nrf52840.h
    ${sdk_root}/modules/nrfx/mdk/nrf52.h
    ${sdk_root}/modules/nrfx/mdk/nrf52810.h
    ${sdk_root}/modules/nrfx/mdk/nrf52810_bitfields.h
    ${sdk_root}/modules/nrfx/mdk/nrf52810_name_change.h
    ${sdk_root}/modules/nrfx/mdk/nrf52810_peripherals.h
    ${sdk_root}/modules/nrfx/mdk/nrf52810_to_nrf52811.h
    ${sdk_root}/modules/nrfx/mdk/nrf52811.h
    ${sdk_root}/modules/nrfx/mdk/nrf52811_bitfields.h
    ${sdk_root}/modules/nrfx/mdk/nrf52811_peripherals.h
    ${sdk_root}/modules/nrfx/mdk/nrf52832_peripherals.h
    ${sdk_root}/modules/nrfx/mdk/nrf52840.h
    ${sdk_root}/modules/nrfx/mdk/nrf52840_bitfields.h
    ${sdk_root}/modules/nrfx/mdk/nrf52840_peripherals.h
    ${sdk_root}/modules/nrfx/mdk/nrf52_bitfields.h
    ${sdk_root}/modules/nrfx/mdk/nrf52_name_change.h
    ${sdk_root}/modules/nrfx/mdk/nrf52_to_nrf52810.h
    ${sdk_root}/modules/nrfx/mdk/nrf52_to_nrf52840.h
    ${sdk_root}/modules/nrfx/mdk/nrf9160.h
    ${sdk_root}/modules/nrfx/mdk/nrf9160_bitfields.h
    ${sdk_root}/modules/nrfx/mdk/nrf9160_peripherals.h
    ${sdk_root}/modules/nrfx/mdk/nrf_peripherals.h
    ${sdk_root}/modules/nrfx/mdk/startup_config.h
    ${sdk_root}/modules/nrfx/mdk/system_nrf51.h
    ${sdk_root}/modules/nrfx/mdk/system_nrf52.h
    ${sdk_root}/modules/nrfx/mdk/system_nrf52810.h
    ${sdk_root}/modules/nrfx/mdk/system_nrf52811.h
    ${sdk_root}/modules/nrfx/mdk/system_nrf52840.h
    ${sdk_root}/modules/nrfx/mdk/system_nrf9160.h
)
target_include_directories(${target_name}_nrf52832 INTERFACE
    ${sdk_root}/modules/nrfx/mdk
)
target_link_libraries(${target_name}_nrf52832 INTERFACE
    ${target_name}_cmsis
)

# link component to target
if(nrf52832_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_nrf52832)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/modules/nrfx/mdk/gcc_startup_nrf52.S
        ${sdk_root}/modules/nrfx/mdk/system_nrf52.c
    )
endif()

# Interface of component "nrf52840"
add_library(${target_name}_nrf52840 INTERFACE)
target_sources(${target_name}_nrf52840 INTERFACE
    ${sdk_root}/modules/nrfx/mdk/compiler_abstraction.h
    ${sdk_root}/modules/nrfx/mdk/nrf.h
    ${sdk_root}/modules/nrfx/mdk/nrf51.h
    ${sdk_root}/modules/nrfx/mdk/nrf51422_peripherals.h
    ${sdk_root}/modules/nrfx/mdk/nrf51801_peripherals.h
    ${sdk_root}/modules/nrfx/mdk/nrf51802_peripherals.h
    ${sdk_root}/modules/nrfx/mdk/nrf51822_peripherals.h
    ${sdk_root}/modules/nrfx/mdk/nrf51824_peripherals.h
    ${sdk_root}/modules/nrfx/mdk/nrf51_bitfields.h
    ${sdk_root}/modules/nrfx/mdk/nrf51_deprecated.h
    ${sdk_root}/modules/nrfx/mdk/nrf51_peripherals.h
    ${sdk_root}/modules/nrfx/mdk/nrf51_to_nrf52.h
    ${sdk_root}/modules/nrfx/mdk/nrf51_to_nrf52810.h
    ${sdk_root}/modules/nrfx/mdk/nrf51_to_nrf52840.h
    ${sdk_root}/modules/nrfx/mdk/nrf52.h
    ${sdk_root}/modules/nrfx/mdk/nrf52810.h
    ${sdk_root}/modules/nrfx/mdk/nrf52810_bitfields.h
    ${sdk_root}/modules/nrfx/mdk/nrf52810_name_change.h
    ${sdk_root}/modules/nrfx/mdk/nrf52810_peripherals.h
    ${sdk_root}/modules/nrfx/mdk/nrf52810_to_nrf52811.h
    ${sdk_root}/modules/nrfx/mdk/nrf52811.h
    ${sdk_root}/modules/nrfx/mdk/nrf52811_bitfields.h
    ${sdk_root}/modules/nrfx/mdk/nrf52811_peripherals.h
    ${sdk_root}/modules/nrfx/mdk/nrf52832_peripherals.h
    ${sdk_root}/modules/nrfx/mdk/nrf52840.h
    ${sdk_root}/modules/nrfx/mdk/nrf52840_bitfields.h
    ${sdk_root}/modules/nrfx/mdk/nrf52840_peripherals.h
    ${sdk_root}/modules/nrfx/mdk/nrf52_bitfields.h
    ${sdk_root}/modules/nrfx/mdk/nrf52_name_change.h
    ${sdk_root}/modules/nrfx/mdk/nrf52_to_nrf52810.h
    ${sdk_root}/modules/nrfx/mdk/nrf52_to_nrf52840.h
    ${sdk_root}/modules/nrfx/mdk/nrf9160.h
    ${sdk_root}/modules/nrfx/mdk/nrf9160_bitfields.h
    ${sdk_root}/modules/nrfx/mdk/nrf9160_peripherals.h
    ${sdk_root}/modules/nrfx/mdk/nrf_peripherals.h
    ${sdk_root}/modules/nrfx/mdk/startup_config.h
    ${sdk_root}/modules/nrfx/mdk/system_nrf51.h
    ${sdk_root}/modules/nrfx/mdk/system_nrf52.h
    ${sdk_root}/modules/nrfx/mdk/system_nrf52810.h
    ${sdk_root}/modules/nrfx/mdk/system_nrf52811.h
    ${sdk_root}/modules/nrfx/mdk/system_nrf52840.h
    ${sdk_root}/modules/nrfx/mdk/system_nrf9160.h
)
target_include_directories(${target_name}_nrf52840 INTERFACE
    ${sdk_root}/modules/nrfx/mdk
)
target_link_libraries(${target_name}_nrf52840 INTERFACE
    ${target_name}_cmsis
)

# link component to target
if(nrf52840_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_nrf52840)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/modules/nrfx/mdk/gcc_startup_nrf52840.S
        ${sdk_root}/modules/nrfx/mdk/system_nrf52840.c
    )
endif()

# Interface of component "mbr_nrf52810"
add_library(${target_name}_mbr_nrf52810 INTERFACE)
target_sources(${target_name}_mbr_nrf52810 INTERFACE
    ${sdk_root}/components/drivers_nrf/nrf_soc_nosd/nrf_error.h
    ${sdk_root}/components/drivers_nrf/nrf_soc_nosd/nrf_nvic.h
    ${sdk_root}/components/drivers_nrf/nrf_soc_nosd/nrf_sdm.h
    ${sdk_root}/components/drivers_nrf/nrf_soc_nosd/nrf_soc.h
    ${sdk_root}/components/softdevice/mbr/nrf52810/headers/nrf_mbr.h
    ${sdk_root}/components/softdevice/mbr/nrf52810/headers/nrf_svc.h
)
target_include_directories(${target_name}_mbr_nrf52810 INTERFACE
    ${sdk_root}/components/drivers_nrf/nrf_soc_nosd
    ${sdk_root}/components/softdevice/mbr/nrf52810/headers
)
target_link_libraries(${target_name}_mbr_nrf52810 INTERFACE
    ${target_name}_mdk
)

# link component to target
if(mbr_nrf52810_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_mbr_nrf52810)
endif()

# Interface of component "mbr_nrf52832"
add_library(${target_name}_mbr_nrf52832 INTERFACE)
target_sources(${target_name}_mbr_nrf52832 INTERFACE
    ${sdk_root}/components/drivers_nrf/nrf_soc_nosd/nrf_error.h
    ${sdk_root}/components/drivers_nrf/nrf_soc_nosd/nrf_nvic.h
    ${sdk_root}/components/drivers_nrf/nrf_soc_nosd/nrf_sdm.h
    ${sdk_root}/components/drivers_nrf/nrf_soc_nosd/nrf_soc.h
    ${sdk_root}/components/softdevice/mbr/nrf52832/headers/nrf_mbr.h
    ${sdk_root}/components/softdevice/mbr/nrf52832/headers/nrf_svc.h
)
target_include_directories(${target_name}_mbr_nrf52832 INTERFACE
    ${sdk_root}/components/drivers_nrf/nrf_soc_nosd
    ${sdk_root}/components/softdevice/mbr/nrf52832/headers
)
target_link_libraries(${target_name}_mbr_nrf52832 INTERFACE
    ${target_name}_mdk
)

# link component to target
if(mbr_nrf52832_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_mbr_nrf52832)
endif()

# Interface of component "mbr_nrf52840"
add_library(${target_name}_mbr_nrf52840 INTERFACE)
target_sources(${target_name}_mbr_nrf52840 INTERFACE
    ${sdk_root}/components/drivers_nrf/nrf_soc_nosd/nrf_error.h
    ${sdk_root}/components/drivers_nrf/nrf_soc_nosd/nrf_nvic.h
    ${sdk_root}/components/drivers_nrf/nrf_soc_nosd/nrf_sdm.h
    ${sdk_root}/components/drivers_nrf/nrf_soc_nosd/nrf_soc.h
    ${sdk_root}/components/softdevice/mbr/nrf52840/headers/nrf_mbr.h
    ${sdk_root}/components/softdevice/mbr/nrf52840/headers/nrf_svc.h
)
target_include_directories(${target_name}_mbr_nrf52840 INTERFACE
    ${sdk_root}/components/drivers_nrf/nrf_soc_nosd
    ${sdk_root}/components/softdevice/mbr/nrf52840/headers
)
target_link_libraries(${target_name}_mbr_nrf52840 INTERFACE
    ${target_name}_mdk
)

# link component to target
if(mbr_nrf52840_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_mbr_nrf52840)
endif()

# Interface of component "nosd"
add_library(${target_name}_nosd INTERFACE)
target_sources(${target_name}_nosd INTERFACE
    ${sdk_root}/components/drivers_nrf/nrf_soc_nosd/nrf_error.h
    ${sdk_root}/components/drivers_nrf/nrf_soc_nosd/nrf_nvic.h
    ${sdk_root}/components/drivers_nrf/nrf_soc_nosd/nrf_sdm.h
    ${sdk_root}/components/drivers_nrf/nrf_soc_nosd/nrf_soc.h
)
target_include_directories(${target_name}_nosd INTERFACE
    ${sdk_root}/components/drivers_nrf/nrf_soc_nosd
)
target_link_libraries(${target_name}_nosd INTERFACE
    ${target_name}_mdk
)

# link component to target
if(nosd_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_nosd)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/components/drivers_nrf/nrf_soc_nosd/nrf_nvic.c
        ${sdk_root}/components/drivers_nrf/nrf_soc_nosd/nrf_soc.c
    )
endif()

# Interface of component "s112"
add_library(${target_name}_s112 INTERFACE)
target_sources(${target_name}_s112 INTERFACE
    ${sdk_root}/components/softdevice/s112/headers/ble.h
    ${sdk_root}/components/softdevice/s112/headers/ble_err.h
    ${sdk_root}/components/softdevice/s112/headers/ble_gap.h
    ${sdk_root}/components/softdevice/s112/headers/ble_gatt.h
    ${sdk_root}/components/softdevice/s112/headers/ble_gattc.h
    ${sdk_root}/components/softdevice/s112/headers/ble_gatts.h
    ${sdk_root}/components/softdevice/s112/headers/ble_hci.h
    ${sdk_root}/components/softdevice/s112/headers/ble_ranges.h
    ${sdk_root}/components/softdevice/s112/headers/ble_types.h
    ${sdk_root}/components/softdevice/s112/headers/nrf52/nrf_mbr.h
    ${sdk_root}/components/softdevice/s112/headers/nrf_error.h
    ${sdk_root}/components/softdevice/s112/headers/nrf_error_sdm.h
    ${sdk_root}/components/softdevice/s112/headers/nrf_error_soc.h
    ${sdk_root}/components/softdevice/s112/headers/nrf_nvic.h
    ${sdk_root}/components/softdevice/s112/headers/nrf_sd_def.h
    ${sdk_root}/components/softdevice/s112/headers/nrf_sdm.h
    ${sdk_root}/components/softdevice/s112/headers/nrf_soc.h
    ${sdk_root}/components/softdevice/s112/headers/nrf_svc.h
)
target_include_directories(${target_name}_s112 INTERFACE
    ${sdk_root}/components/softdevice/s112/headers
    ${sdk_root}/components/softdevice/s112/headers/nrf52
)
target_link_libraries(${target_name}_s112 INTERFACE
    ${target_name}_mdk
)

# link component to target
if(s112_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_s112)
endif()

# Interface of component "s132"
add_library(${target_name}_s132 INTERFACE)
target_sources(${target_name}_s132 INTERFACE
    ${sdk_root}/components/softdevice/s132/headers/ble.h
    ${sdk_root}/components/softdevice/s132/headers/ble_err.h
    ${sdk_root}/components/softdevice/s132/headers/ble_gap.h
    ${sdk_root}/components/softdevice/s132/headers/ble_gatt.h
    ${sdk_root}/components/softdevice/s132/headers/ble_gattc.h
    ${sdk_root}/components/softdevice/s132/headers/ble_gatts.h
    ${sdk_root}/components/softdevice/s132/headers/ble_hci.h
    ${sdk_root}/components/softdevice/s132/headers/ble_l2cap.h
    ${sdk_root}/components/softdevice/s132/headers/ble_ranges.h
    ${sdk_root}/components/softdevice/s132/headers/ble_types.h
    ${sdk_root}/components/softdevice/s132/headers/nrf52/nrf_mbr.h
    ${sdk_root}/components/softdevice/s132/headers/nrf_error.h
    ${sdk_root}/components/softdevice/s132/headers/nrf_error_sdm.h
    ${sdk_root}/components/softdevice/s132/headers/nrf_error_soc.h
    ${sdk_root}/components/softdevice/s132/headers/nrf_nvic.h
    ${sdk_root}/components/softdevice/s132/headers/nrf_sd_def.h
    ${sdk_root}/components/softdevice/s132/headers/nrf_sdm.h
    ${sdk_root}/components/softdevice/s132/headers/nrf_soc.h
    ${sdk_root}/components/softdevice/s132/headers/nrf_svc.h
)
target_include_directories(${target_name}_s132 INTERFACE
    ${sdk_root}/components/softdevice/s132/headers
    ${sdk_root}/components/softdevice/s132/headers/nrf52
)
target_link_libraries(${target_name}_s132 INTERFACE
    ${target_name}_mdk
)

# link component to target
if(s132_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_s132)
endif()

# Interface of component "s140"
add_library(${target_name}_s140 INTERFACE)
target_sources(${target_name}_s140 INTERFACE
    ${sdk_root}/components/softdevice/s140/headers/ble.h
    ${sdk_root}/components/softdevice/s140/headers/ble_err.h
    ${sdk_root}/components/softdevice/s140/headers/ble_gap.h
    ${sdk_root}/components/softdevice/s140/headers/ble_gatt.h
    ${sdk_root}/components/softdevice/s140/headers/ble_gattc.h
    ${sdk_root}/components/softdevice/s140/headers/ble_gatts.h
    ${sdk_root}/components/softdevice/s140/headers/ble_hci.h
    ${sdk_root}/components/softdevice/s140/headers/ble_l2cap.h
    ${sdk_root}/components/softdevice/s140/headers/ble_ranges.h
    ${sdk_root}/components/softdevice/s140/headers/ble_types.h
    ${sdk_root}/components/softdevice/s140/headers/nrf52/nrf_mbr.h
    ${sdk_root}/components/softdevice/s140/headers/nrf_error.h
    ${sdk_root}/components/softdevice/s140/headers/nrf_error_sdm.h
    ${sdk_root}/components/softdevice/s140/headers/nrf_error_soc.h
    ${sdk_root}/components/softdevice/s140/headers/nrf_nvic.h
    ${sdk_root}/components/softdevice/s140/headers/nrf_sd_def.h
    ${sdk_root}/components/softdevice/s140/headers/nrf_sdm.h
    ${sdk_root}/components/softdevice/s140/headers/nrf_soc.h
    ${sdk_root}/components/softdevice/s140/headers/nrf_svc.h
)
target_include_directories(${target_name}_s140 INTERFACE
    ${sdk_root}/components/softdevice/s140/headers
    ${sdk_root}/components/softdevice/s140/headers/nrf52
)
target_link_libraries(${target_name}_s140 INTERFACE
    ${target_name}_mdk
)

# link component to target
if(s140_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_s140)
endif()

# Interface of component "ble_common"
add_library(${target_name}_ble_common INTERFACE)
target_sources(${target_name}_ble_common INTERFACE
    ${sdk_root}/components/ble/common/ble_date_time.h
    ${sdk_root}/components/ble/common/ble_gatt_db.h
    ${sdk_root}/components/ble/common/ble_sensor_location.h
)
target_include_directories(${target_name}_ble_common INTERFACE
    ${sdk_root}/components/ble/common
)
target_link_libraries(${target_name}_ble_common INTERFACE
    ${target_name}_config
    ${target_name}_softdevice
)

# link component to target
if(ble_common_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_ble_common)
endif()

# Interface of component "ble_radio_notification"
add_library(${target_name}_ble_radio_notification INTERFACE)
target_sources(${target_name}_ble_radio_notification INTERFACE
    ${sdk_root}/components/ble/ble_radio_notification/ble_radio_notification.h
)
target_include_directories(${target_name}_ble_radio_notification INTERFACE
    ${sdk_root}/components/ble/ble_radio_notification
)
target_link_libraries(${target_name}_ble_radio_notification INTERFACE
    ${target_name}_softdevice
)

# link component to target
if(ble_radio_notification_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_ble_radio_notification)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/components/ble/ble_radio_notification/ble_radio_notification.c
    )
endif()

# Interface of component "util"
add_library(${target_name}_util INTERFACE)
target_sources(${target_name}_util INTERFACE
    ${sdk_root}/components/ble/common/ble_srv_common.h
    ${sdk_root}/components/libraries/util/app_error.h
    ${sdk_root}/components/libraries/util/app_error_weak.h
    ${sdk_root}/components/libraries/util/app_util.h
    ${sdk_root}/components/libraries/util/app_util_bds.h
    ${sdk_root}/components/libraries/util/app_util_platform.h
    ${sdk_root}/components/libraries/util/nordic_common.h
    ${sdk_root}/components/libraries/util/nrf_assert.h
    ${sdk_root}/components/libraries/util/nrf_bitmask.h
    ${sdk_root}/components/libraries/util/sdk_alloca.h
    ${sdk_root}/components/libraries/util/sdk_common.h
    ${sdk_root}/components/libraries/util/sdk_errors.h
    ${sdk_root}/components/libraries/util/sdk_macros.h
    ${sdk_root}/components/libraries/util/sdk_mapped_flags.h
    ${sdk_root}/components/libraries/util/sdk_os.h
    ${sdk_root}/components/libraries/util/sdk_resources.h
)
target_include_directories(${target_name}_util INTERFACE
    ${sdk_root}/components/ble/common
    ${sdk_root}/components/libraries/util
)
target_link_libraries(${target_name}_util INTERFACE
    ${target_name}_config
    ${target_name}_mdk
    ${target_name}_softdevice
)

# link component to target
if(util_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_util)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/components/libraries/util/app_util_platform.c
        ${sdk_root}/components/libraries/util/nrf_assert.c
    )
endif()

# Interface of component "app_uart_api"
add_library(${target_name}_app_uart_api INTERFACE)
target_sources(${target_name}_app_uart_api INTERFACE
    ${sdk_root}/components/libraries/uart/app_uart.h
)
target_include_directories(${target_name}_app_uart_api INTERFACE
    ${sdk_root}/components/libraries/uart
)
target_link_libraries(${target_name}_app_uart_api INTERFACE
    ${target_name}_util
)

# link component to target
if(app_uart_api_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_app_uart_api)
endif()

# Interface of component "atomic"
add_library(${target_name}_atomic INTERFACE)
target_sources(${target_name}_atomic INTERFACE
    ${sdk_root}/components/libraries/atomic/nrf_atomic.h
    ${sdk_root}/components/libraries/atomic/nrf_atomic_internal.h
    ${sdk_root}/components/libraries/atomic/nrf_atomic_sanity_check.h
)
target_include_directories(${target_name}_atomic INTERFACE
    ${sdk_root}/components/libraries/atomic
)
target_link_libraries(${target_name}_atomic INTERFACE
    ${target_name}_util
)

# link component to target
if(atomic_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_atomic)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/components/libraries/atomic/nrf_atomic.c
    )
endif()

# Interface of component "ble_advdata"
add_library(${target_name}_ble_advdata INTERFACE)
target_sources(${target_name}_ble_advdata INTERFACE
    ${sdk_root}/components/ble/common/ble_advdata.h
)
target_include_directories(${target_name}_ble_advdata INTERFACE
    ${sdk_root}/components/ble/common
)
target_link_libraries(${target_name}_ble_advdata INTERFACE
    ${target_name}_softdevice
    ${target_name}_util
)

# link component to target
if(ble_advdata_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_ble_advdata)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/components/ble/common/ble_advdata.c
    )
endif()

# Interface of component "ble_dtm"
add_library(${target_name}_ble_dtm INTERFACE)
target_sources(${target_name}_ble_dtm INTERFACE
    ${sdk_root}/components/ble/ble_dtm/ble_dtm.h
    ${sdk_root}/components/ble/ble_dtm/ble_dtm_hw.h
)
target_include_directories(${target_name}_ble_dtm INTERFACE
    ${sdk_root}/components/ble/ble_dtm
)
target_link_libraries(${target_name}_ble_dtm INTERFACE
    ${target_name}_mdk
)

# link component to target
if(ble_dtm_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_ble_dtm)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/components/ble/ble_dtm/ble_dtm.c
        ${sdk_root}/components/ble/ble_dtm/ble_dtm_hw_nrf51.c
        ${sdk_root}/components/ble/ble_dtm/ble_dtm_hw_nrf52.c
    )
endif()

# Interface of component "ble_qwr"
add_library(${target_name}_ble_qwr INTERFACE)
target_sources(${target_name}_ble_qwr INTERFACE
    ${sdk_root}/components/ble/nrf_ble_qwr/nrf_ble_qwr.h
)
target_include_directories(${target_name}_ble_qwr INTERFACE
    ${sdk_root}/components/ble/nrf_ble_qwr
)
target_link_libraries(${target_name}_ble_qwr INTERFACE
    ${target_name}_softdevice
    ${target_name}_util
)

# link component to target
if(ble_qwr_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_ble_qwr)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/components/ble/nrf_ble_qwr/nrf_ble_qwr.c
    )
endif()

# Interface of component "ble_racp"
add_library(${target_name}_ble_racp INTERFACE)
target_sources(${target_name}_ble_racp INTERFACE
    ${sdk_root}/components/ble/ble_racp/ble_racp.h
)
target_include_directories(${target_name}_ble_racp INTERFACE
    ${sdk_root}/components/ble/ble_racp
)
target_link_libraries(${target_name}_ble_racp INTERFACE
    ${target_name}_softdevice
)

# link component to target
if(ble_racp_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_ble_racp)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/components/ble/ble_racp/ble_racp.c
    )
endif()

# Interface of component "ble_srv_common"
add_library(${target_name}_ble_srv_common INTERFACE)

# link component to target
if(ble_srv_common_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_ble_srv_common)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/components/ble/common/ble_srv_common.c
    )
endif()

# Interface of component "block_dev"
add_library(${target_name}_block_dev INTERFACE)
target_sources(${target_name}_block_dev INTERFACE
    ${sdk_root}/components/libraries/block_dev/nrf_block_dev.h
)
target_include_directories(${target_name}_block_dev INTERFACE
    ${sdk_root}/components/libraries/block_dev
)
target_link_libraries(${target_name}_block_dev INTERFACE
    ${target_name}_util
)

# link component to target
if(block_dev_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_block_dev)
endif()

# Interface of component "crc16"
add_library(${target_name}_crc16 INTERFACE)
target_sources(${target_name}_crc16 INTERFACE
    ${sdk_root}/components/libraries/crc16/crc16.h
)
target_include_directories(${target_name}_crc16 INTERFACE
    ${sdk_root}/components/libraries/crc16
)

# link component to target
if(crc16_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_crc16)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/components/libraries/crc16/crc16.c
    )
endif()

# Interface of component "fifo"
add_library(${target_name}_fifo INTERFACE)
target_sources(${target_name}_fifo INTERFACE
    ${sdk_root}/components/libraries/fifo/app_fifo.h
)
target_include_directories(${target_name}_fifo INTERFACE
    ${sdk_root}/components/libraries/fifo
)

# link component to target
if(fifo_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_fifo)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/components/libraries/fifo/app_fifo.c
    )
endif()

# Interface of component "fprintf"
add_library(${target_name}_fprintf INTERFACE)
target_sources(${target_name}_fprintf INTERFACE
    ${sdk_root}/external/fprintf/nrf_fprintf.h
    ${sdk_root}/external/fprintf/nrf_fprintf_format.h
)
target_include_directories(${target_name}_fprintf INTERFACE
    ${sdk_root}/external/fprintf
)

# link component to target
if(fprintf_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_fprintf)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/external/fprintf/nrf_fprintf.c
        ${sdk_root}/external/fprintf/nrf_fprintf_format.c
    )
endif()

# Interface of component "scheduler"
add_library(${target_name}_scheduler INTERFACE)
target_sources(${target_name}_scheduler INTERFACE
    ${sdk_root}/components/libraries/scheduler/app_scheduler.h
)
target_include_directories(${target_name}_scheduler INTERFACE
    ${sdk_root}/components/libraries/scheduler
)
target_link_libraries(${target_name}_scheduler INTERFACE
    ${target_name}_config
    ${target_name}_util
)

# link component to target
if(scheduler_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_scheduler)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/components/libraries/scheduler/app_scheduler.c
    )
endif()

# Interface of component "section_vars"
add_library(${target_name}_section_vars INTERFACE)
target_sources(${target_name}_section_vars INTERFACE
    ${sdk_root}/components/libraries/experimental_section_vars/nrf_section.h
)
target_include_directories(${target_name}_section_vars INTERFACE
    ${sdk_root}/components/libraries/experimental_section_vars
)
target_link_libraries(${target_name}_section_vars INTERFACE
    ${target_name}_util
)

# link component to target
if(section_vars_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_section_vars)
endif()

# Interface of component "segger_rtt"
add_library(${target_name}_segger_rtt INTERFACE)
target_sources(${target_name}_segger_rtt INTERFACE
    ${sdk_root}/external/segger_rtt/SEGGER_RTT.h
    ${sdk_root}/external/segger_rtt/SEGGER_RTT_Conf.h
)
target_include_directories(${target_name}_segger_rtt INTERFACE
    ${sdk_root}/external/segger_rtt
)
target_link_libraries(${target_name}_segger_rtt INTERFACE
    ${target_name}_config
    ${target_name}_util
)

# link component to target
if(segger_rtt_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_segger_rtt)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/external/segger_rtt/SEGGER_RTT.c
        ${sdk_root}/external/segger_rtt/SEGGER_RTT_Syscalls_GCC.c
        ${sdk_root}/external/segger_rtt/SEGGER_RTT_printf.c
    )
endif()

# Interface of component "strerror"
add_library(${target_name}_strerror INTERFACE)
target_sources(${target_name}_strerror INTERFACE
    ${sdk_root}/components/libraries/strerror/nrf_strerror.h
)
target_include_directories(${target_name}_strerror INTERFACE
    ${sdk_root}/components/libraries/strerror
)
target_link_libraries(${target_name}_strerror INTERFACE
    ${target_name}_util
)

# link component to target
if(strerror_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_strerror)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/components/libraries/strerror/nrf_strerror.c
    )
endif()

# Interface of component "atomic_flags"
add_library(${target_name}_atomic_flags INTERFACE)
target_sources(${target_name}_atomic_flags INTERFACE
    ${sdk_root}/components/libraries/atomic_flags/nrf_atflags.h
)
target_include_directories(${target_name}_atomic_flags INTERFACE
    ${sdk_root}/components/libraries/atomic_flags
)

# link component to target
if(atomic_flags_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_atomic_flags)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/components/libraries/atomic_flags/nrf_atflags.c
    )
endif()

# Interface of component "fatfs"
add_library(${target_name}_fatfs INTERFACE)
target_sources(${target_name}_fatfs INTERFACE
    ${sdk_root}/external/fatfs/port/diskio_blkdev.h
    ${sdk_root}/external/fatfs/src/diskio.h
    ${sdk_root}/external/fatfs/src/ff.h
    ${sdk_root}/external/fatfs/src/ffconf.h
    ${sdk_root}/external/fatfs/src/integer.h
)
target_include_directories(${target_name}_fatfs INTERFACE
    ${sdk_root}/external/fatfs/port
    ${sdk_root}/external/fatfs/src
)
target_link_libraries(${target_name}_fatfs INTERFACE
    ${target_name}_block_dev
)

# link component to target
if(fatfs_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_fatfs)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/external/fatfs/port/diskio_blkdev.c
        ${sdk_root}/external/fatfs/src/ff.c
    )
endif()

# Interface of component "log_api"
add_library(${target_name}_log_api INTERFACE)
target_sources(${target_name}_log_api INTERFACE
    ${sdk_root}/components/libraries/log/nrf_log.h
    ${sdk_root}/components/libraries/log/nrf_log_instance.h
    ${sdk_root}/components/libraries/log/nrf_log_types.h
    ${sdk_root}/components/libraries/log/src/nrf_log_internal.h
)
target_include_directories(${target_name}_log_api INTERFACE
    ${sdk_root}/components/libraries/log
    ${sdk_root}/components/libraries/log/src
)
target_link_libraries(${target_name}_log_api INTERFACE
    ${target_name}_config
    ${target_name}_mdk
    ${target_name}_section_vars
    ${target_name}_softdevice
    ${target_name}_strerror
    ${target_name}_util
)

# link component to target
if(log_api_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_log_api)
endif()

# Interface of component "mutex"
add_library(${target_name}_mutex INTERFACE)
target_sources(${target_name}_mutex INTERFACE
    ${sdk_root}/components/libraries/mutex/nrf_mtx.h
)
target_include_directories(${target_name}_mutex INTERFACE
    ${sdk_root}/components/libraries/mutex
)
target_link_libraries(${target_name}_mutex INTERFACE
    ${target_name}_atomic
    ${target_name}_mdk
    ${target_name}_util
)

# link component to target
if(mutex_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_mutex)
endif()

# Interface of component "ringbuf"
add_library(${target_name}_ringbuf INTERFACE)
target_sources(${target_name}_ringbuf INTERFACE
    ${sdk_root}/components/libraries/ringbuf/nrf_ringbuf.h
)
target_include_directories(${target_name}_ringbuf INTERFACE
    ${sdk_root}/components/libraries/ringbuf
)
target_link_libraries(${target_name}_ringbuf INTERFACE
    ${target_name}_atomic
    ${target_name}_util
)

# link component to target
if(ringbuf_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_ringbuf)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/components/libraries/ringbuf/nrf_ringbuf.c
    )
endif()

# Interface of component "section_iter"
add_library(${target_name}_section_iter INTERFACE)
target_sources(${target_name}_section_iter INTERFACE
    ${sdk_root}/components/libraries/experimental_section_vars/nrf_section_iter.h
)
target_include_directories(${target_name}_section_iter INTERFACE
    ${sdk_root}/components/libraries/experimental_section_vars
)
target_link_libraries(${target_name}_section_iter INTERFACE
    ${target_name}_section_vars
    ${target_name}_util
)

# link component to target
if(section_iter_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_section_iter)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/components/libraries/experimental_section_vars/nrf_section_iter.c
    )
endif()

# Interface of component "atomic_fifo"
add_library(${target_name}_atomic_fifo INTERFACE)
target_sources(${target_name}_atomic_fifo INTERFACE
    ${sdk_root}/components/libraries/atomic_fifo/nrf_atfifo.h
    ${sdk_root}/components/libraries/atomic_fifo/nrf_atfifo_internal.h
)
target_include_directories(${target_name}_atomic_fifo INTERFACE
    ${sdk_root}/components/libraries/atomic_fifo
)
target_link_libraries(${target_name}_atomic_fifo INTERFACE
    ${target_name}_config
    ${target_name}_log_api
    ${target_name}_mdk
    ${target_name}_util
)

# link component to target
if(atomic_fifo_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_atomic_fifo)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/components/libraries/atomic_fifo/nrf_atfifo.c
    )
endif()

# Interface of component "balloc"
add_library(${target_name}_balloc INTERFACE)
target_sources(${target_name}_balloc INTERFACE
    ${sdk_root}/components/libraries/balloc/nrf_balloc.h
)
target_include_directories(${target_name}_balloc INTERFACE
    ${sdk_root}/components/libraries/balloc
)
target_link_libraries(${target_name}_balloc INTERFACE
    ${target_name}_config
    ${target_name}_log_api
    ${target_name}_section_vars
    ${target_name}_util
)

# link component to target
if(balloc_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_balloc)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/components/libraries/balloc/nrf_balloc.c
    )
endif()

# Interface of component "ble_db_discovery"
add_library(${target_name}_ble_db_discovery INTERFACE)
target_sources(${target_name}_ble_db_discovery INTERFACE
    ${sdk_root}/components/ble/ble_db_discovery/ble_db_discovery.h
)
target_include_directories(${target_name}_ble_db_discovery INTERFACE
    ${sdk_root}/components/ble/ble_db_discovery
)
target_link_libraries(${target_name}_ble_db_discovery INTERFACE
    ${target_name}_ble_common
    ${target_name}_softdevice
)

# link component to target
if(ble_db_discovery_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_ble_db_discovery)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/components/ble/ble_db_discovery/ble_db_discovery.c
    )
endif()

# Interface of component "ble_gatt"
add_library(${target_name}_ble_gatt INTERFACE)
target_sources(${target_name}_ble_gatt INTERFACE
    ${sdk_root}/components/ble/nrf_ble_gatt/nrf_ble_gatt.h
)
target_include_directories(${target_name}_ble_gatt INTERFACE
    ${sdk_root}/components/ble/nrf_ble_gatt
)
target_link_libraries(${target_name}_ble_gatt INTERFACE
    ${target_name}_config
    ${target_name}_softdevice
    ${target_name}_util
)

# link component to target
if(ble_gatt_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_ble_gatt)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/components/ble/nrf_ble_gatt/nrf_ble_gatt.c
    )
endif()

# Interface of component "ble_scan"
add_library(${target_name}_ble_scan INTERFACE)
target_sources(${target_name}_ble_scan INTERFACE
    ${sdk_root}/components/ble/nrf_ble_scan/nrf_ble_scan.h
)
target_include_directories(${target_name}_ble_scan INTERFACE
    ${sdk_root}/components/ble/nrf_ble_scan
)
target_link_libraries(${target_name}_ble_scan INTERFACE
    ${target_name}_config
    ${target_name}_softdevice
    ${target_name}_util
)

# link component to target
if(ble_scan_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_ble_scan)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/components/ble/nrf_ble_scan/nrf_ble_scan.c
    )
endif()

# Interface of component "block_dev_empty"
add_library(${target_name}_block_dev_empty INTERFACE)
target_sources(${target_name}_block_dev_empty INTERFACE
    ${sdk_root}/components/libraries/block_dev/empty/nrf_block_dev_empty.h
)
target_include_directories(${target_name}_block_dev_empty INTERFACE
    ${sdk_root}/components/libraries/block_dev/empty
)
target_link_libraries(${target_name}_block_dev_empty INTERFACE
    ${target_name}_block_dev
    ${target_name}_log_api
)

# link component to target
if(block_dev_empty_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_block_dev_empty)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/components/libraries/block_dev/empty/nrf_block_dev_empty.c
    )
endif()

# Interface of component "block_dev_ram"
add_library(${target_name}_block_dev_ram INTERFACE)
target_sources(${target_name}_block_dev_ram INTERFACE
    ${sdk_root}/components/libraries/block_dev/ram/nrf_block_dev_ram.h
)
target_include_directories(${target_name}_block_dev_ram INTERFACE
    ${sdk_root}/components/libraries/block_dev/ram
)
target_link_libraries(${target_name}_block_dev_ram INTERFACE
    ${target_name}_block_dev
    ${target_name}_log_api
)

# link component to target
if(block_dev_ram_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_block_dev_ram)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/components/libraries/block_dev/ram/nrf_block_dev_ram.c
    )
endif()

# Interface of component "mpu"
add_library(${target_name}_mpu INTERFACE)
target_sources(${target_name}_mpu INTERFACE
    ${sdk_root}/components/libraries/mpu/nrf_mpu_lib.h
)
target_include_directories(${target_name}_mpu INTERFACE
    ${sdk_root}/components/libraries/mpu
)
target_link_libraries(${target_name}_mpu INTERFACE
    ${target_name}_util
)

# link component to target
if(mpu_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_mpu)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/components/libraries/mpu/nrf_mpu_lib.c
    )
endif()

# Interface of component "nrfx"
add_library(${target_name}_nrfx INTERFACE)
target_sources(${target_name}_nrfx INTERFACE
    ${sdk_root}/integration/nrfx/legacy/apply_old_config.h
    ${sdk_root}/integration/nrfx/nrfx_config.h
    ${sdk_root}/integration/nrfx/nrfx_glue.h
    ${sdk_root}/integration/nrfx/nrfx_log.h
    ${sdk_root}/modules/nrfx/drivers/nrfx_common.h
    ${sdk_root}/modules/nrfx/drivers/nrfx_errors.h
    ${sdk_root}/modules/nrfx/nrfx.h
    ${sdk_root}/modules/nrfx/soc/nrfx_atomic.h
    ${sdk_root}/modules/nrfx/soc/nrfx_atomic_internal.h
    ${sdk_root}/modules/nrfx/soc/nrfx_coredep.h
    ${sdk_root}/modules/nrfx/soc/nrfx_irqs.h
    ${sdk_root}/modules/nrfx/soc/nrfx_irqs_nrf51.h
    ${sdk_root}/modules/nrfx/soc/nrfx_irqs_nrf52810.h
    ${sdk_root}/modules/nrfx/soc/nrfx_irqs_nrf52811.h
    ${sdk_root}/modules/nrfx/soc/nrfx_irqs_nrf52832.h
    ${sdk_root}/modules/nrfx/soc/nrfx_irqs_nrf52840.h
    ${sdk_root}/modules/nrfx/soc/nrfx_irqs_nrf9160.h
)
target_include_directories(${target_name}_nrfx INTERFACE
    ${sdk_root}/integration/nrfx
    ${sdk_root}/modules/nrfx
)
target_link_libraries(${target_name}_nrfx INTERFACE
    ${target_name}_config
    ${target_name}_log_api
    ${target_name}_mdk
    ${target_name}_util
)

# link component to target
if(nrfx_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_nrfx)
endif()

# Interface of component "queue"
add_library(${target_name}_queue INTERFACE)
target_sources(${target_name}_queue INTERFACE
    ${sdk_root}/components/libraries/queue/nrf_queue.h
)
target_include_directories(${target_name}_queue INTERFACE
    ${sdk_root}/components/libraries/queue
)
target_link_libraries(${target_name}_queue INTERFACE
    ${target_name}_log_api
    ${target_name}_section_vars
    ${target_name}_util
)

# link component to target
if(queue_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_queue)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/components/libraries/queue/nrf_queue.c
    )
endif()

# Interface of component "softdevice_common"
add_library(${target_name}_softdevice_common INTERFACE)
target_sources(${target_name}_softdevice_common INTERFACE
    ${sdk_root}/components/softdevice/common/nrf_sdh.h
    ${sdk_root}/components/softdevice/common/nrf_sdh_ant.h
    ${sdk_root}/components/softdevice/common/nrf_sdh_ble.h
    ${sdk_root}/components/softdevice/common/nrf_sdh_freertos.h
    ${sdk_root}/components/softdevice/common/nrf_sdh_soc.h
)
target_include_directories(${target_name}_softdevice_common INTERFACE
    ${sdk_root}/components/softdevice/common
)
target_link_libraries(${target_name}_softdevice_common INTERFACE
    ${target_name}_config
    ${target_name}_section_iter
    ${target_name}_softdevice
    ${target_name}_util
)

# link component to target
if(softdevice_common_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_softdevice_common)
endif()

# Interface of component "sortlist"
add_library(${target_name}_sortlist INTERFACE)
target_sources(${target_name}_sortlist INTERFACE
    ${sdk_root}/components/libraries/sortlist/nrf_sortlist.h
)
target_include_directories(${target_name}_sortlist INTERFACE
    ${sdk_root}/components/libraries/sortlist
)
target_link_libraries(${target_name}_sortlist INTERFACE
    ${target_name}_config
)

# link component to target
if(sortlist_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_sortlist)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/components/libraries/sortlist/nrf_sortlist.c
    )
endif()

# Interface of component "ble_advertising"
add_library(${target_name}_ble_advertising INTERFACE)
target_sources(${target_name}_ble_advertising INTERFACE
    ${sdk_root}/components/ble/ble_advertising/ble_advertising.h
)
target_include_directories(${target_name}_ble_advertising INTERFACE
    ${sdk_root}/components/ble/ble_advertising
)
target_link_libraries(${target_name}_ble_advertising INTERFACE
    ${target_name}_ble_advdata
    ${target_name}_softdevice
)

# link component to target
if(ble_advertising_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_ble_advertising)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/components/ble/ble_advertising/ble_advertising.c
    )
endif()

# Interface of component "ble_conn_state"
add_library(${target_name}_ble_conn_state INTERFACE)
target_sources(${target_name}_ble_conn_state INTERFACE
    ${sdk_root}/components/ble/common/ble_conn_state.h
)
target_include_directories(${target_name}_ble_conn_state INTERFACE
    ${sdk_root}/components/ble/common
)
target_link_libraries(${target_name}_ble_conn_state INTERFACE
    ${target_name}_atomic
    ${target_name}_softdevice
)

# link component to target
if(ble_conn_state_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_ble_conn_state)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/components/ble/common/ble_conn_state.c
    )
endif()

# Interface of component "delay"
add_library(${target_name}_delay INTERFACE)
target_sources(${target_name}_delay INTERFACE
    ${sdk_root}/components/libraries/delay/nrf_delay.h
)
target_include_directories(${target_name}_delay INTERFACE
    ${sdk_root}/components/libraries/delay
)
target_link_libraries(${target_name}_delay INTERFACE
    ${target_name}_nrfx
)

# link component to target
if(delay_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_delay)
endif()

# Interface of component "hal_clock"
add_library(${target_name}_hal_clock INTERFACE)
target_sources(${target_name}_hal_clock INTERFACE
    ${sdk_root}/modules/nrfx/hal/nrf_clock.h
    ${sdk_root}/modules/nrfx/hal/nrf_clock.h
)
target_include_directories(${target_name}_hal_clock INTERFACE
    ${sdk_root}/modules/nrfx
    ${sdk_root}/modules/nrfx/hal
)
target_link_libraries(${target_name}_hal_clock INTERFACE
    ${target_name}_nrfx
)

# link component to target
if(hal_clock_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_hal_clock)
endif()

# Interface of component "hal_gpio"
add_library(${target_name}_hal_gpio INTERFACE)
target_sources(${target_name}_hal_gpio INTERFACE
    ${sdk_root}/modules/nrfx/hal/nrf_gpio.h
    ${sdk_root}/modules/nrfx/hal/nrf_gpio.h
)
target_include_directories(${target_name}_hal_gpio INTERFACE
    ${sdk_root}/modules/nrfx
    ${sdk_root}/modules/nrfx/hal
)
target_link_libraries(${target_name}_hal_gpio INTERFACE
    ${target_name}_nrfx
)

# link component to target
if(hal_gpio_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_hal_gpio)
endif()

# Interface of component "hal_gpiote"
add_library(${target_name}_hal_gpiote INTERFACE)
target_sources(${target_name}_hal_gpiote INTERFACE
    ${sdk_root}/modules/nrfx/hal/nrf_gpiote.h
    ${sdk_root}/modules/nrfx/hal/nrf_gpiote.h
)
target_include_directories(${target_name}_hal_gpiote INTERFACE
    ${sdk_root}/modules/nrfx
    ${sdk_root}/modules/nrfx/hal
)
target_link_libraries(${target_name}_hal_gpiote INTERFACE
    ${target_name}_nrfx
)

# link component to target
if(hal_gpiote_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_hal_gpiote)
endif()

# Interface of component "hal_nvmc"
add_library(${target_name}_hal_nvmc INTERFACE)
target_sources(${target_name}_hal_nvmc INTERFACE
    ${sdk_root}/modules/nrfx/hal/nrf_nvmc.h
    ${sdk_root}/modules/nrfx/hal/nrf_nvmc.h
)
target_include_directories(${target_name}_hal_nvmc INTERFACE
    ${sdk_root}/modules/nrfx
    ${sdk_root}/modules/nrfx/hal
)
target_link_libraries(${target_name}_hal_nvmc INTERFACE
    ${target_name}_nrfx
)

# link component to target
if(hal_nvmc_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_hal_nvmc)
endif()

# Interface of component "hal_power"
add_library(${target_name}_hal_power INTERFACE)
target_sources(${target_name}_hal_power INTERFACE
    ${sdk_root}/modules/nrfx/hal/nrf_power.h
    ${sdk_root}/modules/nrfx/hal/nrf_power.h
)
target_include_directories(${target_name}_hal_power INTERFACE
    ${sdk_root}/modules/nrfx
    ${sdk_root}/modules/nrfx/hal
)
target_link_libraries(${target_name}_hal_power INTERFACE
    ${target_name}_nrfx
)

# link component to target
if(hal_power_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_hal_power)
endif()

# Interface of component "hal_ppi"
add_library(${target_name}_hal_ppi INTERFACE)
target_sources(${target_name}_hal_ppi INTERFACE
    ${sdk_root}/modules/nrfx/hal/nrf_ppi.h
    ${sdk_root}/modules/nrfx/hal/nrf_ppi.h
)
target_include_directories(${target_name}_hal_ppi INTERFACE
    ${sdk_root}/modules/nrfx
    ${sdk_root}/modules/nrfx/hal
)
target_link_libraries(${target_name}_hal_ppi INTERFACE
    ${target_name}_nrfx
)

# link component to target
if(hal_ppi_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_hal_ppi)
endif()

# Interface of component "hal_qspi"
add_library(${target_name}_hal_qspi INTERFACE)
target_sources(${target_name}_hal_qspi INTERFACE
    ${sdk_root}/modules/nrfx/hal/nrf_qspi.h
    ${sdk_root}/modules/nrfx/hal/nrf_qspi.h
)
target_include_directories(${target_name}_hal_qspi INTERFACE
    ${sdk_root}/modules/nrfx
    ${sdk_root}/modules/nrfx/hal
)
target_link_libraries(${target_name}_hal_qspi INTERFACE
    ${target_name}_nrfx
)

# link component to target
if(hal_qspi_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_hal_qspi)
endif()

# Interface of component "hal_regulators"
add_library(${target_name}_hal_regulators INTERFACE)
target_sources(${target_name}_hal_regulators INTERFACE
    ${sdk_root}/modules/nrfx/hal/nrf_regulators.h
    ${sdk_root}/modules/nrfx/hal/nrf_regulators.h
)
target_include_directories(${target_name}_hal_regulators INTERFACE
    ${sdk_root}/modules/nrfx
    ${sdk_root}/modules/nrfx/hal
)
target_link_libraries(${target_name}_hal_regulators INTERFACE
    ${target_name}_nrfx
)

# link component to target
if(hal_regulators_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_hal_regulators)
endif()

# Interface of component "hal_rtc"
add_library(${target_name}_hal_rtc INTERFACE)
target_sources(${target_name}_hal_rtc INTERFACE
    ${sdk_root}/modules/nrfx/hal/nrf_rtc.h
    ${sdk_root}/modules/nrfx/hal/nrf_rtc.h
)
target_include_directories(${target_name}_hal_rtc INTERFACE
    ${sdk_root}/modules/nrfx
    ${sdk_root}/modules/nrfx/hal
)
target_link_libraries(${target_name}_hal_rtc INTERFACE
    ${target_name}_nrfx
)

# link component to target
if(hal_rtc_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_hal_rtc)
endif()

# Interface of component "hal_spi"
add_library(${target_name}_hal_spi INTERFACE)
target_sources(${target_name}_hal_spi INTERFACE
    ${sdk_root}/modules/nrfx/hal/nrf_spi.h
    ${sdk_root}/modules/nrfx/hal/nrf_spi.h
)
target_include_directories(${target_name}_hal_spi INTERFACE
    ${sdk_root}/modules/nrfx
    ${sdk_root}/modules/nrfx/hal
)
target_link_libraries(${target_name}_hal_spi INTERFACE
    ${target_name}_nrfx
)

# link component to target
if(hal_spi_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_hal_spi)
endif()

# Interface of component "hal_spim"
add_library(${target_name}_hal_spim INTERFACE)
target_sources(${target_name}_hal_spim INTERFACE
    ${sdk_root}/modules/nrfx/hal/nrf_spim.h
    ${sdk_root}/modules/nrfx/hal/nrf_spim.h
)
target_include_directories(${target_name}_hal_spim INTERFACE
    ${sdk_root}/modules/nrfx
    ${sdk_root}/modules/nrfx/hal
)
target_link_libraries(${target_name}_hal_spim INTERFACE
    ${target_name}_nrfx
)

# link component to target
if(hal_spim_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_hal_spim)
endif()

# Interface of component "hal_systick"
add_library(${target_name}_hal_systick INTERFACE)
target_sources(${target_name}_hal_systick INTERFACE
    ${sdk_root}/modules/nrfx/hal/nrf_systick.h
    ${sdk_root}/modules/nrfx/hal/nrf_systick.h
)
target_include_directories(${target_name}_hal_systick INTERFACE
    ${sdk_root}/modules/nrfx
    ${sdk_root}/modules/nrfx/hal
)
target_link_libraries(${target_name}_hal_systick INTERFACE
    ${target_name}_nrfx
)

# link component to target
if(hal_systick_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_hal_systick)
endif()

# Interface of component "hal_timer"
add_library(${target_name}_hal_timer INTERFACE)
target_sources(${target_name}_hal_timer INTERFACE
    ${sdk_root}/modules/nrfx/hal/nrf_timer.h
    ${sdk_root}/modules/nrfx/hal/nrf_timer.h
)
target_include_directories(${target_name}_hal_timer INTERFACE
    ${sdk_root}/modules/nrfx
    ${sdk_root}/modules/nrfx/hal
)
target_link_libraries(${target_name}_hal_timer INTERFACE
    ${target_name}_nrfx
)

# link component to target
if(hal_timer_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_hal_timer)
endif()

# Interface of component "hal_twi"
add_library(${target_name}_hal_twi INTERFACE)
target_sources(${target_name}_hal_twi INTERFACE
    ${sdk_root}/modules/nrfx/hal/nrf_twi.h
    ${sdk_root}/modules/nrfx/hal/nrf_twi.h
)
target_include_directories(${target_name}_hal_twi INTERFACE
    ${sdk_root}/modules/nrfx
    ${sdk_root}/modules/nrfx/hal
)
target_link_libraries(${target_name}_hal_twi INTERFACE
    ${target_name}_nrfx
)

# link component to target
if(hal_twi_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_hal_twi)
endif()

# Interface of component "hal_twim"
add_library(${target_name}_hal_twim INTERFACE)
target_sources(${target_name}_hal_twim INTERFACE
    ${sdk_root}/modules/nrfx/hal/nrf_twim.h
    ${sdk_root}/modules/nrfx/hal/nrf_twim.h
)
target_include_directories(${target_name}_hal_twim INTERFACE
    ${sdk_root}/modules/nrfx
    ${sdk_root}/modules/nrfx/hal
)
target_link_libraries(${target_name}_hal_twim INTERFACE
    ${target_name}_nrfx
)

# link component to target
if(hal_twim_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_hal_twim)
endif()

# Interface of component "hal_uart"
add_library(${target_name}_hal_uart INTERFACE)
target_sources(${target_name}_hal_uart INTERFACE
    ${sdk_root}/modules/nrfx/hal/nrf_uart.h
    ${sdk_root}/modules/nrfx/hal/nrf_uart.h
)
target_include_directories(${target_name}_hal_uart INTERFACE
    ${sdk_root}/modules/nrfx
    ${sdk_root}/modules/nrfx/hal
)
target_link_libraries(${target_name}_hal_uart INTERFACE
    ${target_name}_nrfx
)

# link component to target
if(hal_uart_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_hal_uart)
endif()

# Interface of component "hal_uarte"
add_library(${target_name}_hal_uarte INTERFACE)
target_sources(${target_name}_hal_uarte INTERFACE
    ${sdk_root}/modules/nrfx/hal/nrf_uarte.h
    ${sdk_root}/modules/nrfx/hal/nrf_uarte.h
)
target_include_directories(${target_name}_hal_uarte INTERFACE
    ${sdk_root}/modules/nrfx
    ${sdk_root}/modules/nrfx/hal
)
target_link_libraries(${target_name}_hal_uarte INTERFACE
    ${target_name}_nrfx
)

# link component to target
if(hal_uarte_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_hal_uarte)
endif()

# Interface of component "hal_usbd"
add_library(${target_name}_hal_usbd INTERFACE)
target_sources(${target_name}_hal_usbd INTERFACE
    ${sdk_root}/modules/nrfx/hal/nrf_usbd.h
    ${sdk_root}/modules/nrfx/hal/nrf_usbd.h
)
target_include_directories(${target_name}_hal_usbd INTERFACE
    ${sdk_root}/modules/nrfx
    ${sdk_root}/modules/nrfx/hal
)
target_link_libraries(${target_name}_hal_usbd INTERFACE
    ${target_name}_nrfx
)

# link component to target
if(hal_usbd_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_hal_usbd)
endif()

# Interface of component "memobj"
add_library(${target_name}_memobj INTERFACE)
target_sources(${target_name}_memobj INTERFACE
    ${sdk_root}/components/libraries/memobj/nrf_memobj.h
)
target_include_directories(${target_name}_memobj INTERFACE
    ${sdk_root}/components/libraries/memobj
)
target_link_libraries(${target_name}_memobj INTERFACE
    ${target_name}_balloc
    ${target_name}_util
)

# link component to target
if(memobj_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_memobj)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/components/libraries/memobj/nrf_memobj.c
    )
endif()

# Interface of component "nrfx_atomic"
add_library(${target_name}_nrfx_atomic INTERFACE)
target_sources(${target_name}_nrfx_atomic INTERFACE
    ${sdk_root}/modules/nrfx/soc/nrfx_atomic.h
)
target_include_directories(${target_name}_nrfx_atomic INTERFACE
    ${sdk_root}/modules/nrfx/soc
)
target_link_libraries(${target_name}_nrfx_atomic INTERFACE
    ${target_name}_nrfx
)

# link component to target
if(nrfx_atomic_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_nrfx_atomic)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/modules/nrfx/soc/nrfx_atomic.c
        ${sdk_root}/modules/nrfx/soc/nrfx_atomic_internal.h
    )
endif()

# Interface of component "nrfx_power_clock"
add_library(${target_name}_nrfx_power_clock INTERFACE)
target_sources(${target_name}_nrfx_power_clock INTERFACE
    ${sdk_root}/modules/nrfx/drivers/include/nrfx_power_clock.h
)
target_include_directories(${target_name}_nrfx_power_clock INTERFACE
    ${sdk_root}/modules/nrfx/drivers/include
)
target_link_libraries(${target_name}_nrfx_power_clock INTERFACE
    ${target_name}_nrfx
)

# link component to target
if(nrfx_power_clock_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_nrfx_power_clock)
endif()

# Interface of component "prs"
add_library(${target_name}_prs INTERFACE)
target_sources(${target_name}_prs INTERFACE
    ${sdk_root}/modules/nrfx/drivers/src/prs/nrfx_prs.h
)
target_include_directories(${target_name}_prs INTERFACE
    ${sdk_root}/modules/nrfx/drivers/src
)
target_link_libraries(${target_name}_prs INTERFACE
    ${target_name}_nrfx
)

# link component to target
if(prs_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_prs)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/modules/nrfx/drivers/src/prs/nrfx_prs.c
        ${sdk_root}/modules/nrfx/drivers/src/prs/nrfx_prs.h
    )

    target_include_directories(${target_name} PRIVATE
        ${sdk_root}/modules/nrfx/drivers/src/prs
    )
endif()

# Interface of component "task_manager"
add_library(${target_name}_task_manager INTERFACE)
target_sources(${target_name}_task_manager INTERFACE
    ${sdk_root}/components/libraries/experimental_task_manager/task_manager.h
)
target_include_directories(${target_name}_task_manager INTERFACE
    ${sdk_root}/components/libraries/experimental_task_manager
)
target_link_libraries(${target_name}_task_manager INTERFACE
    ${target_name}_mdk
    ${target_name}_util
)

# link component to target
if(task_manager_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_task_manager)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/components/libraries/experimental_task_manager/task_manager.c
    )
endif()

# Interface of component "ble_link_ctx_manager"
add_library(${target_name}_ble_link_ctx_manager INTERFACE)
target_sources(${target_name}_ble_link_ctx_manager INTERFACE
    ${sdk_root}/components/ble/ble_link_ctx_manager/ble_link_ctx_manager.h
)
target_include_directories(${target_name}_ble_link_ctx_manager INTERFACE
    ${sdk_root}/components/ble/ble_link_ctx_manager
)
target_link_libraries(${target_name}_ble_link_ctx_manager INTERFACE
    ${target_name}_ble_conn_state
    ${target_name}_util
)

# link component to target
if(ble_link_ctx_manager_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_ble_link_ctx_manager)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/components/ble/ble_link_ctx_manager/ble_link_ctx_manager.c
    )
endif()

# Interface of component "boards"
add_library(${target_name}_boards INTERFACE)
target_sources(${target_name}_boards INTERFACE
    ${sdk_root}/components/boards/arduino_primo.h
    ${sdk_root}/components/boards/boards.h
    ${sdk_root}/components/boards/d52_starterkit.h
    ${sdk_root}/components/boards/n5_starterkit.h
    ${sdk_root}/components/boards/nrf6310.h
    ${sdk_root}/components/boards/pca10000.h
    ${sdk_root}/components/boards/pca10001.h
    ${sdk_root}/components/boards/pca10003.h
    ${sdk_root}/components/boards/pca10028.h
    ${sdk_root}/components/boards/pca10031.h
    ${sdk_root}/components/boards/pca10036.h
    ${sdk_root}/components/boards/pca10040.h
    ${sdk_root}/components/boards/pca10056.h
    ${sdk_root}/components/boards/pca10059.h
    ${sdk_root}/components/boards/pca20006.h
    ${sdk_root}/components/boards/pca20020.h
    ${sdk_root}/components/boards/wt51822.h
)
target_include_directories(${target_name}_boards INTERFACE
    ${sdk_root}/components/boards
)
target_link_libraries(${target_name}_boards INTERFACE
    ${target_name}_hal_gpio
    ${target_name}_util
)

# link component to target
if(boards_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_boards)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/components/boards/boards.c
    )
endif()

# Interface of component "button_api"
add_library(${target_name}_button_api INTERFACE)
target_sources(${target_name}_button_api INTERFACE
    ${sdk_root}/components/libraries/button/app_button.h
)
target_include_directories(${target_name}_button_api INTERFACE
    ${sdk_root}/components/libraries/button
)
target_link_libraries(${target_name}_button_api INTERFACE
    ${target_name}_hal_gpio
    ${target_name}_mdk
    ${target_name}_util
)

# link component to target
if(button_api_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_button_api)
endif()

# Interface of component "fstorage"
add_library(${target_name}_fstorage INTERFACE)
target_sources(${target_name}_fstorage INTERFACE
    ${sdk_root}/components/libraries/fstorage/nrf_fstorage.h
    ${sdk_root}/components/libraries/fstorage/nrf_fstorage_nvmc.h
    ${sdk_root}/components/libraries/fstorage/nrf_fstorage_sd.h
)
target_include_directories(${target_name}_fstorage INTERFACE
    ${sdk_root}/components/libraries/fstorage
)
target_link_libraries(${target_name}_fstorage INTERFACE
    ${target_name}_section_vars
    ${target_name}_util
)

# link component to target
if(fstorage_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_fstorage)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/components/libraries/fstorage/nrf_fstorage.c
        ${sdk_root}/components/libraries/fstorage/nrf_fstorage_nvmc.c
        ${sdk_root}/components/libraries/fstorage/nrf_fstorage_sd.c
    )
endif()

# Interface of component "log_ctrl"
add_library(${target_name}_log_ctrl INTERFACE)
target_sources(${target_name}_log_ctrl INTERFACE
    ${sdk_root}/components/libraries/log/nrf_log_backend_interface.h
    ${sdk_root}/components/libraries/log/nrf_log_ctrl.h
    ${sdk_root}/components/libraries/log/src/nrf_log_ctrl_internal.h
)
target_include_directories(${target_name}_log_ctrl INTERFACE
    ${sdk_root}/components/libraries/log
    ${sdk_root}/components/libraries/log/src
)
target_link_libraries(${target_name}_log_ctrl INTERFACE
    ${target_name}_config
    ${target_name}_log_api
    ${target_name}_memobj
    ${target_name}_section_vars
    ${target_name}_util
)

# link component to target
if(log_ctrl_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_log_ctrl)
endif()

# Interface of component "nrfx_clock"
add_library(${target_name}_nrfx_clock INTERFACE)
target_sources(${target_name}_nrfx_clock INTERFACE
    ${sdk_root}/modules/nrfx/drivers/include/nrfx_clock.h
)
target_include_directories(${target_name}_nrfx_clock INTERFACE
    ${sdk_root}/modules/nrfx/drivers/include
)
target_link_libraries(${target_name}_nrfx_clock INTERFACE
    ${target_name}_hal_clock
    ${target_name}_nrfx
    ${target_name}_nrfx_power_clock
)

# link component to target
if(nrfx_clock_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_nrfx_clock)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/modules/nrfx/drivers/src/nrfx_clock.c
    )
endif()

# Interface of component "nrfx_gpiote"
add_library(${target_name}_nrfx_gpiote INTERFACE)
target_sources(${target_name}_nrfx_gpiote INTERFACE
    ${sdk_root}/modules/nrfx/drivers/include/nrfx_gpiote.h
)
target_include_directories(${target_name}_nrfx_gpiote INTERFACE
    ${sdk_root}/modules/nrfx/drivers/include
)
target_link_libraries(${target_name}_nrfx_gpiote INTERFACE
    ${target_name}_hal_gpio
    ${target_name}_hal_gpiote
    ${target_name}_nrfx
)

# link component to target
if(nrfx_gpiote_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_nrfx_gpiote)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/modules/nrfx/drivers/src/nrfx_gpiote.c
    )
endif()

# Interface of component "nrfx_power"
add_library(${target_name}_nrfx_power INTERFACE)
target_sources(${target_name}_nrfx_power INTERFACE
    ${sdk_root}/modules/nrfx/drivers/include/nrfx_power.h
)
target_include_directories(${target_name}_nrfx_power INTERFACE
    ${sdk_root}/modules/nrfx/drivers/include
)
target_link_libraries(${target_name}_nrfx_power INTERFACE
    ${target_name}_hal_power
    ${target_name}_nrfx
    ${target_name}_nrfx_power_clock
)

# link component to target
if(nrfx_power_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_nrfx_power)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/modules/nrfx/drivers/src/nrfx_power.c
    )
endif()

# Interface of component "nrfx_ppi"
add_library(${target_name}_nrfx_ppi INTERFACE)
target_sources(${target_name}_nrfx_ppi INTERFACE
    ${sdk_root}/modules/nrfx/drivers/include/nrfx_ppi.h
)
target_include_directories(${target_name}_nrfx_ppi INTERFACE
    ${sdk_root}/modules/nrfx/drivers/include
)
target_link_libraries(${target_name}_nrfx_ppi INTERFACE
    ${target_name}_hal_ppi
    ${target_name}_nrfx
)

# link component to target
if(nrfx_ppi_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_nrfx_ppi)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/modules/nrfx/drivers/src/nrfx_ppi.c
    )
endif()

# Interface of component "nrfx_qspi"
add_library(${target_name}_nrfx_qspi INTERFACE)
target_sources(${target_name}_nrfx_qspi INTERFACE
    ${sdk_root}/modules/nrfx/drivers/include/nrfx_qspi.h
)
target_include_directories(${target_name}_nrfx_qspi INTERFACE
    ${sdk_root}/modules/nrfx/drivers/include
)
target_link_libraries(${target_name}_nrfx_qspi INTERFACE
    ${target_name}_hal_qspi
    ${target_name}_nrfx
)

# link component to target
if(nrfx_qspi_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_nrfx_qspi)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/modules/nrfx/drivers/src/nrfx_qspi.c
    )
endif()

# Interface of component "nrfx_rtc"
add_library(${target_name}_nrfx_rtc INTERFACE)
target_sources(${target_name}_nrfx_rtc INTERFACE
    ${sdk_root}/modules/nrfx/drivers/include/nrfx_rtc.h
)
target_include_directories(${target_name}_nrfx_rtc INTERFACE
    ${sdk_root}/modules/nrfx/drivers/include
)
target_link_libraries(${target_name}_nrfx_rtc INTERFACE
    ${target_name}_hal_rtc
    ${target_name}_nrfx
)

# link component to target
if(nrfx_rtc_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_nrfx_rtc)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/modules/nrfx/drivers/src/nrfx_rtc.c
    )
endif()

# Interface of component "nrfx_spi"
add_library(${target_name}_nrfx_spi INTERFACE)
target_sources(${target_name}_nrfx_spi INTERFACE
    ${sdk_root}/modules/nrfx/drivers/include/nrfx_spi.h
)
target_include_directories(${target_name}_nrfx_spi INTERFACE
    ${sdk_root}/modules/nrfx/drivers/include
)
target_link_libraries(${target_name}_nrfx_spi INTERFACE
    ${target_name}_hal_spi
    ${target_name}_nrfx
)

# link component to target
if(nrfx_spi_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_nrfx_spi)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/modules/nrfx/drivers/src/nrfx_spi.c
    )
endif()

# Interface of component "nrfx_spim"
add_library(${target_name}_nrfx_spim INTERFACE)
target_sources(${target_name}_nrfx_spim INTERFACE
    ${sdk_root}/modules/nrfx/drivers/include/nrfx_spim.h
)
target_include_directories(${target_name}_nrfx_spim INTERFACE
    ${sdk_root}/modules/nrfx/drivers/include
)
target_link_libraries(${target_name}_nrfx_spim INTERFACE
    ${target_name}_hal_spim
    ${target_name}_nrfx
)

# link component to target
if(nrfx_spim_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_nrfx_spim)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/modules/nrfx/drivers/src/nrfx_spim.c
    )
endif()

# Interface of component "nrfx_systick"
add_library(${target_name}_nrfx_systick INTERFACE)
target_sources(${target_name}_nrfx_systick INTERFACE
    ${sdk_root}/modules/nrfx/drivers/include/nrfx_systick.h
)
target_include_directories(${target_name}_nrfx_systick INTERFACE
    ${sdk_root}/modules/nrfx/drivers/include
)
target_link_libraries(${target_name}_nrfx_systick INTERFACE
    ${target_name}_hal_systick
    ${target_name}_nrfx
)

# link component to target
if(nrfx_systick_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_nrfx_systick)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/modules/nrfx/drivers/src/nrfx_systick.c
    )
endif()

# Interface of component "nrfx_timer"
add_library(${target_name}_nrfx_timer INTERFACE)
target_sources(${target_name}_nrfx_timer INTERFACE
    ${sdk_root}/modules/nrfx/drivers/include/nrfx_timer.h
)
target_include_directories(${target_name}_nrfx_timer INTERFACE
    ${sdk_root}/modules/nrfx/drivers/include
)
target_link_libraries(${target_name}_nrfx_timer INTERFACE
    ${target_name}_hal_timer
    ${target_name}_nrfx
)

# link component to target
if(nrfx_timer_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_nrfx_timer)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/modules/nrfx/drivers/src/nrfx_timer.c
    )
endif()

# Interface of component "nrfx_twi"
add_library(${target_name}_nrfx_twi INTERFACE)
target_sources(${target_name}_nrfx_twi INTERFACE
    ${sdk_root}/modules/nrfx/drivers/include/nrfx_twi.h
)
target_include_directories(${target_name}_nrfx_twi INTERFACE
    ${sdk_root}/modules/nrfx/drivers/include
)
target_link_libraries(${target_name}_nrfx_twi INTERFACE
    ${target_name}_hal_twi
    ${target_name}_nrfx
)

# link component to target
if(nrfx_twi_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_nrfx_twi)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/modules/nrfx/drivers/src/nrfx_twi.c
    )
endif()

# Interface of component "nrfx_twim"
add_library(${target_name}_nrfx_twim INTERFACE)
target_sources(${target_name}_nrfx_twim INTERFACE
    ${sdk_root}/modules/nrfx/drivers/include/nrfx_twim.h
)
target_include_directories(${target_name}_nrfx_twim INTERFACE
    ${sdk_root}/modules/nrfx/drivers/include
)
target_link_libraries(${target_name}_nrfx_twim INTERFACE
    ${target_name}_hal_twim
    ${target_name}_nrfx
)

# link component to target
if(nrfx_twim_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_nrfx_twim)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/modules/nrfx/drivers/src/nrfx_twim.c
    )
endif()

# Interface of component "nrfx_uart"
add_library(${target_name}_nrfx_uart INTERFACE)
target_sources(${target_name}_nrfx_uart INTERFACE
    ${sdk_root}/modules/nrfx/drivers/include/nrfx_uart.h
)
target_include_directories(${target_name}_nrfx_uart INTERFACE
    ${sdk_root}/modules/nrfx/drivers/include
)
target_link_libraries(${target_name}_nrfx_uart INTERFACE
    ${target_name}_hal_uart
    ${target_name}_nrfx
)

# link component to target
if(nrfx_uart_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_nrfx_uart)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/modules/nrfx/drivers/src/nrfx_uart.c
    )
endif()

# Interface of component "nrfx_uarte"
add_library(${target_name}_nrfx_uarte INTERFACE)
target_sources(${target_name}_nrfx_uarte INTERFACE
    ${sdk_root}/modules/nrfx/drivers/include/nrfx_uarte.h
)
target_include_directories(${target_name}_nrfx_uarte INTERFACE
    ${sdk_root}/modules/nrfx/drivers/include
)
target_link_libraries(${target_name}_nrfx_uarte INTERFACE
    ${target_name}_hal_uarte
    ${target_name}_nrfx
)

# link component to target
if(nrfx_uarte_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_nrfx_uarte)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/modules/nrfx/drivers/src/nrfx_uarte.c
    )
endif()

# Interface of component "timer"
add_library(${target_name}_timer INTERFACE)
target_sources(${target_name}_timer INTERFACE
    ${sdk_root}/components/libraries/timer/app_timer.h
)
target_include_directories(${target_name}_timer INTERFACE
    ${sdk_root}/components/libraries/timer
)
target_link_libraries(${target_name}_timer INTERFACE
    ${target_name}_config
    ${target_name}_log_api
    ${target_name}_mdk
    ${target_name}_sortlist
    ${target_name}_util
)

# link component to target
if(timer_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_timer)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/components/libraries/timer/app_timer.c
    )
endif()

# Interface of component "app_error_handler"
add_library(${target_name}_app_error_handler INTERFACE)

# link component to target
if(app_error_handler_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_app_error_handler)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/components/libraries/util/app_error.c
        ${sdk_root}/components/libraries/util/app_error_handler_gcc.c
        ${sdk_root}/components/libraries/util/app_error_weak.c
    )
endif()

# Interface of component "ble_conn_params"
add_library(${target_name}_ble_conn_params INTERFACE)
target_sources(${target_name}_ble_conn_params INTERFACE
    ${sdk_root}/components/ble/common/ble_conn_params.h
)
target_include_directories(${target_name}_ble_conn_params INTERFACE
    ${sdk_root}/components/ble/common
)
target_link_libraries(${target_name}_ble_conn_params INTERFACE
    ${target_name}_softdevice
    ${target_name}_util
)

# link component to target
if(ble_conn_params_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_ble_conn_params)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/components/ble/common/ble_conn_params.c
    )
endif()

# Interface of component "bsp_api"
add_library(${target_name}_bsp_api INTERFACE)
target_sources(${target_name}_bsp_api INTERFACE
    ${sdk_root}/components/libraries/bsp/bsp.h
    ${sdk_root}/components/libraries/bsp/bsp_config.h
)
target_include_directories(${target_name}_bsp_api INTERFACE
    ${sdk_root}/components/libraries/bsp
)
target_link_libraries(${target_name}_bsp_api INTERFACE
    ${target_name}_boards
    ${target_name}_button_api
)

# link component to target
if(bsp_api_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_bsp_api)
endif()

# Interface of component "cli_api"
add_library(${target_name}_cli_api INTERFACE)
target_sources(${target_name}_cli_api INTERFACE
    ${sdk_root}/components/libraries/cli/nrf_cli.h
    ${sdk_root}/components/libraries/cli/nrf_cli_types.h
)
target_include_directories(${target_name}_cli_api INTERFACE
    ${sdk_root}/components/libraries/cli
)
target_link_libraries(${target_name}_cli_api INTERFACE
    ${target_name}_config
    ${target_name}_fprintf
    ${target_name}_log_ctrl
    ${target_name}_memobj
    ${target_name}_queue
    ${target_name}_section_vars
    ${target_name}_task_manager
    ${target_name}_util
)

# link component to target
if(cli_api_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_cli_api)
endif()

# Interface of component "drv_clock"
add_library(${target_name}_drv_clock INTERFACE)
target_sources(${target_name}_drv_clock INTERFACE
    ${sdk_root}/integration/nrfx/legacy/nrf_drv_clock.h
)
target_include_directories(${target_name}_drv_clock INTERFACE
    ${sdk_root}/integration/nrfx/legacy
)
target_link_libraries(${target_name}_drv_clock INTERFACE
    ${target_name}_nrfx_clock
)

# link component to target
if(drv_clock_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_drv_clock)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/integration/nrfx/legacy/nrf_drv_clock.c
    )
endif()

# Interface of component "drv_gpiote"
add_library(${target_name}_drv_gpiote INTERFACE)
target_sources(${target_name}_drv_gpiote INTERFACE
    ${sdk_root}/integration/nrfx/legacy/nrf_drv_gpiote.h
)
target_include_directories(${target_name}_drv_gpiote INTERFACE
    ${sdk_root}/integration/nrfx/legacy
)
target_link_libraries(${target_name}_drv_gpiote INTERFACE
    ${target_name}_nrfx_gpiote
)

# link component to target
if(drv_gpiote_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_drv_gpiote)
endif()

# Interface of component "drv_ppi"
add_library(${target_name}_drv_ppi INTERFACE)
target_sources(${target_name}_drv_ppi INTERFACE
    ${sdk_root}/integration/nrfx/legacy/nrf_drv_ppi.h
)
target_include_directories(${target_name}_drv_ppi INTERFACE
    ${sdk_root}/integration/nrfx/legacy
)
target_link_libraries(${target_name}_drv_ppi INTERFACE
    ${target_name}_nrfx_ppi
)

# link component to target
if(drv_ppi_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_drv_ppi)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/integration/nrfx/legacy/nrf_drv_ppi.c
    )
endif()

# Interface of component "drv_qspi"
add_library(${target_name}_drv_qspi INTERFACE)
target_sources(${target_name}_drv_qspi INTERFACE
    ${sdk_root}/integration/nrfx/legacy/nrf_drv_qspi.h
)
target_include_directories(${target_name}_drv_qspi INTERFACE
    ${sdk_root}/integration/nrfx/legacy
)
target_link_libraries(${target_name}_drv_qspi INTERFACE
    ${target_name}_nrfx_qspi
)

# link component to target
if(drv_qspi_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_drv_qspi)
endif()

# Interface of component "drv_rtc"
add_library(${target_name}_drv_rtc INTERFACE)
target_sources(${target_name}_drv_rtc INTERFACE
    ${sdk_root}/integration/nrfx/legacy/nrf_drv_rtc.h
)
target_include_directories(${target_name}_drv_rtc INTERFACE
    ${sdk_root}/integration/nrfx/legacy
)
target_link_libraries(${target_name}_drv_rtc INTERFACE
    ${target_name}_nrfx_rtc
)

# link component to target
if(drv_rtc_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_drv_rtc)
endif()

# Interface of component "drv_spi"
add_library(${target_name}_drv_spi INTERFACE)
target_sources(${target_name}_drv_spi INTERFACE
    ${sdk_root}/integration/nrfx/legacy/nrf_drv_spi.h
)
target_include_directories(${target_name}_drv_spi INTERFACE
    ${sdk_root}/integration/nrfx/legacy
)
target_link_libraries(${target_name}_drv_spi INTERFACE
    ${target_name}_nrfx
    ${target_name}_nrfx_spi
    ${target_name}_nrfx_spim
)

# link component to target
if(drv_spi_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_drv_spi)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/integration/nrfx/legacy/nrf_drv_spi.c
    )
endif()

# Interface of component "drv_timer"
add_library(${target_name}_drv_timer INTERFACE)
target_sources(${target_name}_drv_timer INTERFACE
    ${sdk_root}/integration/nrfx/legacy/nrf_drv_timer.h
)
target_include_directories(${target_name}_drv_timer INTERFACE
    ${sdk_root}/integration/nrfx/legacy
)
target_link_libraries(${target_name}_drv_timer INTERFACE
    ${target_name}_nrfx_timer
)

# link component to target
if(drv_timer_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_drv_timer)
endif()

# Interface of component "drv_twi"
add_library(${target_name}_drv_twi INTERFACE)
target_sources(${target_name}_drv_twi INTERFACE
    ${sdk_root}/integration/nrfx/legacy/nrf_drv_twi.h
)
target_include_directories(${target_name}_drv_twi INTERFACE
    ${sdk_root}/integration/nrfx/legacy
)
target_link_libraries(${target_name}_drv_twi INTERFACE
    ${target_name}_nrfx
    ${target_name}_nrfx_twi
    ${target_name}_nrfx_twim
)

# link component to target
if(drv_twi_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_drv_twi)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/integration/nrfx/legacy/nrf_drv_twi.c
    )
endif()

# Interface of component "drv_uart"
add_library(${target_name}_drv_uart INTERFACE)
target_sources(${target_name}_drv_uart INTERFACE
    ${sdk_root}/integration/nrfx/legacy/nrf_drv_uart.h
)
target_include_directories(${target_name}_drv_uart INTERFACE
    ${sdk_root}/integration/nrfx/legacy
)
target_link_libraries(${target_name}_drv_uart INTERFACE
    ${target_name}_nrfx
    ${target_name}_nrfx_uart
    ${target_name}_nrfx_uarte
)

# link component to target
if(drv_uart_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_drv_uart)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/integration/nrfx/legacy/nrf_drv_uart.c
    )
endif()

# Interface of component "fds"
add_library(${target_name}_fds INTERFACE)
target_sources(${target_name}_fds INTERFACE
    ${sdk_root}/components/libraries/fds/fds.h
    ${sdk_root}/components/libraries/fds/fds_internal_defs.h
)
target_include_directories(${target_name}_fds INTERFACE
    ${sdk_root}/components/libraries/fds
)
target_link_libraries(${target_name}_fds INTERFACE
    ${target_name}_config
    ${target_name}_softdevice
    ${target_name}_util
)

# link component to target
if(fds_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_fds)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/components/libraries/fds/fds.c
    )
endif()

# Interface of component "hardfault"
add_library(${target_name}_hardfault INTERFACE)
target_sources(${target_name}_hardfault INTERFACE
    ${sdk_root}/components/libraries/hardfault/hardfault.h
    ${sdk_root}/components/libraries/hardfault/hardfault_genhf.h
)
target_include_directories(${target_name}_hardfault INTERFACE
    ${sdk_root}/components/libraries/hardfault
)
target_link_libraries(${target_name}_hardfault INTERFACE
    ${target_name}_mdk
)

# link component to target
if(hardfault_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_hardfault)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/components/libraries/hardfault/hardfault_implementation.c
        ${sdk_root}/components/libraries/hardfault/nrf52/handler/hardfault_handler_gcc.c
    )
endif()

# Interface of component "libuarte"
add_library(${target_name}_libuarte INTERFACE)
target_sources(${target_name}_libuarte INTERFACE
    ${sdk_root}/components/libraries/experimental_libuarte/nrf_libuarte.h
)
target_include_directories(${target_name}_libuarte INTERFACE
    ${sdk_root}/components/libraries/experimental_libuarte
)
target_link_libraries(${target_name}_libuarte INTERFACE
    ${target_name}_hal_uarte
    ${target_name}_nrfx_ppi
    ${target_name}_nrfx_timer
    ${target_name}_util
)

# link component to target
if(libuarte_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_libuarte)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/components/libraries/experimental_libuarte/nrf_libuarte.c
    )
endif()

# Interface of component "log_default_backends"
add_library(${target_name}_log_default_backends INTERFACE)
target_sources(${target_name}_log_default_backends INTERFACE
    ${sdk_root}/components/libraries/log/nrf_log_default_backends.h
)
target_include_directories(${target_name}_log_default_backends INTERFACE
    ${sdk_root}/components/libraries/log
)
target_link_libraries(${target_name}_log_default_backends INTERFACE
    ${target_name}_config
    ${target_name}_util
)

# link component to target
if(log_default_backends_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_log_default_backends)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/components/libraries/log/src/nrf_log_default_backends.c
    )
endif()

# Interface of component "nrfx_usbd"
add_library(${target_name}_nrfx_usbd INTERFACE)
target_sources(${target_name}_nrfx_usbd INTERFACE
    ${sdk_root}/modules/nrfx/drivers/include/nrfx_usbd.h
)
target_include_directories(${target_name}_nrfx_usbd INTERFACE
    ${sdk_root}/modules/nrfx/drivers/include
)
target_link_libraries(${target_name}_nrfx_usbd INTERFACE
    ${target_name}_hal_usbd
    ${target_name}_nrfx
)

# link component to target
if(nrfx_usbd_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_nrfx_usbd)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/modules/nrfx/drivers/src/nrfx_usbd.c
        ${sdk_root}/modules/nrfx/drivers/src/nrfx_usbd_errata.h
    )

    target_include_directories(${target_name} PRIVATE
        ${sdk_root}/modules/nrfx/drivers/src
    )
endif()

# Interface of component "pwr_mgmt"
add_library(${target_name}_pwr_mgmt INTERFACE)
target_sources(${target_name}_pwr_mgmt INTERFACE
    ${sdk_root}/components/libraries/pwr_mgmt/nrf_pwr_mgmt.h
)
target_include_directories(${target_name}_pwr_mgmt INTERFACE
    ${sdk_root}/components/libraries/pwr_mgmt
)
target_link_libraries(${target_name}_pwr_mgmt INTERFACE
    ${target_name}_section_iter
    ${target_name}_util
)

# link component to target
if(pwr_mgmt_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_pwr_mgmt)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/components/libraries/pwr_mgmt/nrf_pwr_mgmt.c
    )
endif()

# Interface of component "app_uart_blocking"
add_library(${target_name}_app_uart_blocking INTERFACE)

# link component to target
if(app_uart_blocking_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_app_uart_blocking)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/components/libraries/uart/app_uart.c
    )
endif()

# Interface of component "app_uart_fifo"
add_library(${target_name}_app_uart_fifo INTERFACE)

# link component to target
if(app_uart_fifo_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_app_uart_fifo)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/components/libraries/uart/app_uart_fifo.c
    )
endif()

# Interface of component "block_dev_qspi"
add_library(${target_name}_block_dev_qspi INTERFACE)
target_sources(${target_name}_block_dev_qspi INTERFACE
    ${sdk_root}/components/libraries/block_dev/qspi/nrf_block_dev_qspi.h
    ${sdk_root}/components/libraries/block_dev/qspi/nrf_serial_flash_params.h
)
target_include_directories(${target_name}_block_dev_qspi INTERFACE
    ${sdk_root}/components/libraries/block_dev/qspi
)
target_link_libraries(${target_name}_block_dev_qspi INTERFACE
    ${target_name}_block_dev
    ${target_name}_drv_qspi
    ${target_name}_log_api
    ${target_name}_util
)

# link component to target
if(block_dev_qspi_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_block_dev_qspi)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/components/libraries/block_dev/qspi/nrf_block_dev_qspi.c
        ${sdk_root}/components/libraries/block_dev/qspi/nrf_serial_flash_params.c
    )
endif()

# Interface of component "bsp"
add_library(${target_name}_bsp INTERFACE)

# link component to target
if(bsp_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_bsp)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/components/libraries/bsp/bsp.c
    )

    target_include_directories(${target_name} PRIVATE
        ${sdk_root}/components/libraries/bsp
    )
endif()

# Interface of component "bsp_btn_ant"
add_library(${target_name}_bsp_btn_ant INTERFACE)
target_sources(${target_name}_bsp_btn_ant INTERFACE
    ${sdk_root}/components/libraries/bsp/bsp_btn_ant.h
)
target_include_directories(${target_name}_bsp_btn_ant INTERFACE
    ${sdk_root}/components/libraries/bsp
)
target_link_libraries(${target_name}_bsp_btn_ant INTERFACE
    ${target_name}_util
)

# link component to target
if(bsp_btn_ant_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_bsp_btn_ant)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/components/libraries/bsp/bsp_btn_ant.c
    )
endif()

# Interface of component "bsp_btn_ble"
add_library(${target_name}_bsp_btn_ble INTERFACE)
target_sources(${target_name}_bsp_btn_ble INTERFACE
    ${sdk_root}/components/libraries/bsp/bsp_btn_ble.h
)
target_include_directories(${target_name}_bsp_btn_ble INTERFACE
    ${sdk_root}/components/libraries/bsp
)
target_link_libraries(${target_name}_bsp_btn_ble INTERFACE
    ${target_name}_bsp_api
    ${target_name}_softdevice
)

# link component to target
if(bsp_btn_ble_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_bsp_btn_ble)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/components/libraries/bsp/bsp_btn_ble.c
    )
endif()

# Interface of component "bsp_cli"
add_library(${target_name}_bsp_cli INTERFACE)
target_sources(${target_name}_bsp_cli INTERFACE
    ${sdk_root}/components/libraries/bsp/bsp_cli.h
)
target_include_directories(${target_name}_bsp_cli INTERFACE
    ${sdk_root}/components/libraries/bsp
)
target_link_libraries(${target_name}_bsp_cli INTERFACE
    ${target_name}_bsp_api
    ${target_name}_cli_api
)

# link component to target
if(bsp_cli_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_bsp_cli)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/components/libraries/bsp/bsp_cli.c
    )
endif()

# Interface of component "bsp_nfc"
add_library(${target_name}_bsp_nfc INTERFACE)
target_sources(${target_name}_bsp_nfc INTERFACE
    ${sdk_root}/components/libraries/bsp/bsp_nfc.h
)
target_include_directories(${target_name}_bsp_nfc INTERFACE
    ${sdk_root}/components/libraries/bsp
)
target_link_libraries(${target_name}_bsp_nfc INTERFACE
    ${target_name}_util
)

# link component to target
if(bsp_nfc_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_bsp_nfc)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/components/libraries/bsp/bsp_nfc.c
    )
endif()

# Interface of component "button"
add_library(${target_name}_button INTERFACE)

# link component to target
if(button_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_button)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/components/libraries/button/app_button.c
    )
endif()

# Interface of component "cli_ble_uart"
add_library(${target_name}_cli_ble_uart INTERFACE)
target_sources(${target_name}_cli_ble_uart INTERFACE
    ${sdk_root}/components/libraries/cli/ble_uart/nrf_cli_ble_uart.h
)
target_include_directories(${target_name}_cli_ble_uart INTERFACE
    ${sdk_root}/components/libraries/cli/ble_uart
)
target_link_libraries(${target_name}_cli_ble_uart INTERFACE
    ${target_name}_ble_gatt
    ${target_name}_cli_api
    ${target_name}_ringbuf
    ${target_name}_softdevice
    ${target_name}_timer
    ${target_name}_util
)

# link component to target
if(cli_ble_uart_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_cli_ble_uart)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/components/libraries/cli/ble_uart/nrf_cli_ble_uart.c
    )
endif()

# Interface of component "cli_rtt"
add_library(${target_name}_cli_rtt INTERFACE)
target_sources(${target_name}_cli_rtt INTERFACE
    ${sdk_root}/components/libraries/cli/rtt/nrf_cli_rtt.h
)
target_include_directories(${target_name}_cli_rtt INTERFACE
    ${sdk_root}/components/libraries/cli/rtt
)
target_link_libraries(${target_name}_cli_rtt INTERFACE
    ${target_name}_cli_api
    ${target_name}_timer
    ${target_name}_util
)

# link component to target
if(cli_rtt_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_cli_rtt)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/components/libraries/cli/rtt/nrf_cli_rtt.c
    )
endif()

# Interface of component "cli_uart"
add_library(${target_name}_cli_uart INTERFACE)
target_sources(${target_name}_cli_uart INTERFACE
    ${sdk_root}/components/libraries/cli/uart/nrf_cli_uart.h
)
target_include_directories(${target_name}_cli_uart INTERFACE
    ${sdk_root}/components/libraries/cli/uart
)
target_link_libraries(${target_name}_cli_uart INTERFACE
    ${target_name}_cli_api
    ${target_name}_drv_uart
    ${target_name}_ringbuf
    ${target_name}_timer
)

# link component to target
if(cli_uart_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_cli_uart)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/components/libraries/cli/uart/nrf_cli_uart.c
    )
endif()

# Interface of component "drv_power"
add_library(${target_name}_drv_power INTERFACE)
target_sources(${target_name}_drv_power INTERFACE
    ${sdk_root}/integration/nrfx/legacy/nrf_drv_power.h
)
target_include_directories(${target_name}_drv_power INTERFACE
    ${sdk_root}/integration/nrfx/legacy
)
target_link_libraries(${target_name}_drv_power INTERFACE
    ${target_name}_nrfx_power
)

# link component to target
if(drv_power_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_drv_power)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/integration/nrfx/legacy/nrf_drv_power.c
    )
endif()

# Interface of component "drv_usbd"
add_library(${target_name}_drv_usbd INTERFACE)
target_sources(${target_name}_drv_usbd INTERFACE
    ${sdk_root}/integration/nrfx/legacy/nrf_drv_usbd.h
    ${sdk_root}/integration/nrfx/legacy/nrf_drv_usbd_errata.h
)
target_include_directories(${target_name}_drv_usbd INTERFACE
    ${sdk_root}/integration/nrfx/legacy
)
target_link_libraries(${target_name}_drv_usbd INTERFACE
    ${target_name}_nrfx
    ${target_name}_nrfx_usbd
)

# link component to target
if(drv_usbd_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_drv_usbd)
endif()

# Interface of component "libuarte_async"
add_library(${target_name}_libuarte_async INTERFACE)
target_sources(${target_name}_libuarte_async INTERFACE
    ${sdk_root}/components/libraries/experimental_libuarte/nrf_libuarte_async.h
)
target_include_directories(${target_name}_libuarte_async INTERFACE
    ${sdk_root}/components/libraries/experimental_libuarte
)
target_link_libraries(${target_name}_libuarte_async INTERFACE
    ${target_name}_balloc
    ${target_name}_hal_uarte
    ${target_name}_libuarte
    ${target_name}_nrfx_ppi
    ${target_name}_nrfx_rtc
    ${target_name}_nrfx_timer
    ${target_name}_queue
    ${target_name}_util
)

# link component to target
if(libuarte_async_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_libuarte_async)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/components/libraries/experimental_libuarte/nrf_libuarte_async.c
    )
endif()

# Interface of component "log"
add_library(${target_name}_log INTERFACE)
target_sources(${target_name}_log INTERFACE
    ${sdk_root}/components/libraries/log/nrf_log_str_formatter.h
)
target_include_directories(${target_name}_log INTERFACE
    ${sdk_root}/components/libraries/log
)
target_link_libraries(${target_name}_log INTERFACE
    ${target_name}_fprintf
    ${target_name}_log_ctrl
)

# link component to target
if(log_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_log)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/components/libraries/log/src/nrf_log_frontend.c
        ${sdk_root}/components/libraries/log/src/nrf_log_str_formatter.c
    )
endif()

# Interface of component "sdcard"
add_library(${target_name}_sdcard INTERFACE)
target_sources(${target_name}_sdcard INTERFACE
    ${sdk_root}/components/libraries/sdcard/app_sdcard.h
)
target_include_directories(${target_name}_sdcard INTERFACE
    ${sdk_root}/components/libraries/sdcard
)
target_link_libraries(${target_name}_sdcard INTERFACE
    ${target_name}_config
    ${target_name}_util
)

# link component to target
if(sdcard_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_sdcard)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/components/libraries/sdcard/app_sdcard.c
    )
endif()

# Interface of component "twi_mngr"
add_library(${target_name}_twi_mngr INTERFACE)
target_sources(${target_name}_twi_mngr INTERFACE
    ${sdk_root}/components/libraries/twi_mngr/nrf_twi_mngr.h
)
target_include_directories(${target_name}_twi_mngr INTERFACE
    ${sdk_root}/components/libraries/twi_mngr
)
target_link_libraries(${target_name}_twi_mngr INTERFACE
    ${target_name}_drv_twi
    ${target_name}_queue
    ${target_name}_util
)

# link component to target
if(twi_mngr_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_twi_mngr)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/components/libraries/twi_mngr/nrf_twi_mngr.c
    )
endif()

# Interface of component "block_dev_sdc"
add_library(${target_name}_block_dev_sdc INTERFACE)
target_sources(${target_name}_block_dev_sdc INTERFACE
    ${sdk_root}/components/libraries/block_dev/sdc/nrf_block_dev_sdc.h
)
target_include_directories(${target_name}_block_dev_sdc INTERFACE
    ${sdk_root}/components/libraries/block_dev/sdc
)
target_link_libraries(${target_name}_block_dev_sdc INTERFACE
    ${target_name}_block_dev
    ${target_name}_sdcard
)

# link component to target
if(block_dev_sdc_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_block_dev_sdc)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/components/libraries/block_dev/sdc/nrf_block_dev_sdc.c
    )
endif()

# Interface of component "cli"
add_library(${target_name}_cli INTERFACE)
target_sources(${target_name}_cli INTERFACE
    ${sdk_root}/components/libraries/cli/nrf_cli_vt100.h
)
target_include_directories(${target_name}_cli INTERFACE
    ${sdk_root}/components/libraries/cli
)

# link component to target
if(cli_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_cli)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/components/libraries/cli/cli_utils_cmds.c
        ${sdk_root}/components/libraries/cli/nrf_cli.c
    )
endif()

# Interface of component "cli_libuarte"
add_library(${target_name}_cli_libuarte INTERFACE)
target_sources(${target_name}_cli_libuarte INTERFACE
    ${sdk_root}/components/libraries/cli/libuarte/nrf_cli_libuarte.h
)
target_include_directories(${target_name}_cli_libuarte INTERFACE
    ${sdk_root}/components/libraries/cli/libuarte
)
target_link_libraries(${target_name}_cli_libuarte INTERFACE
    ${target_name}_cli_api
    ${target_name}_libuarte
    ${target_name}_ringbuf
    ${target_name}_timer
)

# link component to target
if(cli_libuarte_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_cli_libuarte)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/components/libraries/cli/libuarte/nrf_cli_libuarte.c
    )
endif()

# Interface of component "log_backend_flash"
add_library(${target_name}_log_backend_flash INTERFACE)
target_sources(${target_name}_log_backend_flash INTERFACE
    ${sdk_root}/components/libraries/log/nrf_log_backend_flash.h
)
target_include_directories(${target_name}_log_backend_flash INTERFACE
    ${sdk_root}/components/libraries/log
)
target_link_libraries(${target_name}_log_backend_flash INTERFACE
    ${target_name}_fstorage
    ${target_name}_log_api
    ${target_name}_log_ctrl
)

# link component to target
if(log_backend_flash_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_log_backend_flash)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/components/libraries/log/src/nrf_log_backend_flash.c
    )
endif()

# Interface of component "log_backend_serial"
add_library(${target_name}_log_backend_serial INTERFACE)
target_sources(${target_name}_log_backend_serial INTERFACE
    ${sdk_root}/components/libraries/log/src/nrf_log_backend_serial.h
)
target_include_directories(${target_name}_log_backend_serial INTERFACE
    ${sdk_root}/components/libraries/log/src
)
target_link_libraries(${target_name}_log_backend_serial INTERFACE
    ${target_name}_fprintf
    ${target_name}_log_ctrl
)

# link component to target
if(log_backend_serial_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_log_backend_serial)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/components/libraries/log/src/nrf_log_backend_serial.c
    )
endif()

# Interface of component "usbd_core"
add_library(${target_name}_usbd_core INTERFACE)
target_sources(${target_name}_usbd_core INTERFACE
    ${sdk_root}/components/libraries/usbd/app_usbd.h
    ${sdk_root}/components/libraries/usbd/app_usbd_class_base.h
    ${sdk_root}/components/libraries/usbd/app_usbd_core.h
    ${sdk_root}/components/libraries/usbd/app_usbd_descriptor.h
    ${sdk_root}/components/libraries/usbd/app_usbd_langid.h
    ${sdk_root}/components/libraries/usbd/app_usbd_request.h
    ${sdk_root}/components/libraries/usbd/app_usbd_serial_num.h
    ${sdk_root}/components/libraries/usbd/app_usbd_string_desc.h
    ${sdk_root}/components/libraries/usbd/app_usbd_types.h
)
target_include_directories(${target_name}_usbd_core INTERFACE
    ${sdk_root}/components/libraries/usbd
)
target_link_libraries(${target_name}_usbd_core INTERFACE
    ${target_name}_drv_usbd
    ${target_name}_mdk
    ${target_name}_util
)

# link component to target
if(usbd_core_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_usbd_core)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/components/libraries/usbd/app_usbd.c
        ${sdk_root}/components/libraries/usbd/app_usbd_core.c
        ${sdk_root}/components/libraries/usbd/app_usbd_serial_num.c
        ${sdk_root}/components/libraries/usbd/app_usbd_string_desc.c
    )
endif()

# Interface of component "log_backend_rtt"
add_library(${target_name}_log_backend_rtt INTERFACE)
target_sources(${target_name}_log_backend_rtt INTERFACE
    ${sdk_root}/components/libraries/log/nrf_log_backend_rtt.h
)
target_include_directories(${target_name}_log_backend_rtt INTERFACE
    ${sdk_root}/components/libraries/log
)
target_link_libraries(${target_name}_log_backend_rtt INTERFACE
    ${target_name}_log_ctrl
)

# link component to target
if(log_backend_rtt_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_log_backend_rtt)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/components/libraries/log/src/nrf_log_backend_rtt.c
    )
endif()

# Interface of component "log_backend_uart"
add_library(${target_name}_log_backend_uart INTERFACE)
target_sources(${target_name}_log_backend_uart INTERFACE
    ${sdk_root}/components/libraries/log/nrf_log_backend_uart.h
)
target_include_directories(${target_name}_log_backend_uart INTERFACE
    ${sdk_root}/components/libraries/log
)
target_link_libraries(${target_name}_log_backend_uart INTERFACE
    ${target_name}_log_ctrl
)

# link component to target
if(log_backend_uart_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_log_backend_uart)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/components/libraries/log/src/nrf_log_backend_uart.c
    )
endif()

# Interface of component "usbd_class_cdc"
add_library(${target_name}_usbd_class_cdc INTERFACE)
target_sources(${target_name}_usbd_class_cdc INTERFACE
    ${sdk_root}/components/libraries/usbd/class/cdc/app_usbd_cdc_desc.h
    ${sdk_root}/components/libraries/usbd/class/cdc/app_usbd_cdc_types.h
)
target_include_directories(${target_name}_usbd_class_cdc INTERFACE
    ${sdk_root}/components/libraries/usbd/class/cdc
)
target_link_libraries(${target_name}_usbd_class_cdc INTERFACE
    ${target_name}_usbd_core
)

# link component to target
if(usbd_class_cdc_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_usbd_class_cdc)
endif()

# Interface of component "usbd_class_msc"
add_library(${target_name}_usbd_class_msc INTERFACE)
target_sources(${target_name}_usbd_class_msc INTERFACE
    ${sdk_root}/components/libraries/usbd/class/msc/app_usbd_msc.h
    ${sdk_root}/components/libraries/usbd/class/msc/app_usbd_msc_desc.h
    ${sdk_root}/components/libraries/usbd/class/msc/app_usbd_msc_internal.h
    ${sdk_root}/components/libraries/usbd/class/msc/app_usbd_msc_scsi.h
    ${sdk_root}/components/libraries/usbd/class/msc/app_usbd_msc_types.h
)
target_include_directories(${target_name}_usbd_class_msc INTERFACE
    ${sdk_root}/components/libraries/usbd/class/msc
)
target_link_libraries(${target_name}_usbd_class_msc INTERFACE
    ${target_name}_block_dev
    ${target_name}_drv_usbd
    ${target_name}_usbd_core
    ${target_name}_util
)

# link component to target
if(usbd_class_msc_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_usbd_class_msc)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/components/libraries/usbd/class/msc/app_usbd_msc.c
    )
endif()

# Interface of component "usbd_class_cdc_acm"
add_library(${target_name}_usbd_class_cdc_acm INTERFACE)
target_sources(${target_name}_usbd_class_cdc_acm INTERFACE
    ${sdk_root}/components/libraries/usbd/class/cdc/acm/app_usbd_cdc_acm.h
    ${sdk_root}/components/libraries/usbd/class/cdc/acm/app_usbd_cdc_acm_internal.h
)
target_include_directories(${target_name}_usbd_class_cdc_acm INTERFACE
    ${sdk_root}/components/libraries/usbd/class/cdc/acm
)
target_link_libraries(${target_name}_usbd_class_cdc_acm INTERFACE
    ${target_name}_drv_usbd
    ${target_name}_usbd_class_cdc
    ${target_name}_usbd_core
    ${target_name}_util
)

# link component to target
if(usbd_class_cdc_acm_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_usbd_class_cdc_acm)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/components/libraries/usbd/class/cdc/acm/app_usbd_cdc_acm.c
    )
endif()

# Interface of component "cli_cdc_acm"
add_library(${target_name}_cli_cdc_acm INTERFACE)
target_sources(${target_name}_cli_cdc_acm INTERFACE
    ${sdk_root}/components/libraries/cli/cdc_acm/nrf_cli_cdc_acm.h
)
target_include_directories(${target_name}_cli_cdc_acm INTERFACE
    ${sdk_root}/components/libraries/cli/cdc_acm
)
target_link_libraries(${target_name}_cli_cdc_acm INTERFACE
    ${target_name}_cli_api
    ${target_name}_usbd_class_cdc_acm
)

# link component to target
if(cli_cdc_acm_needed)
    target_link_libraries(${target_name} PRIVATE ${target_name}_cli_cdc_acm)

    target_sources(${target_name} PRIVATE
        ${sdk_root}/components/libraries/cli/cdc_acm/nrf_cli_cdc_acm.c
    )
endif()

endfunction()
    