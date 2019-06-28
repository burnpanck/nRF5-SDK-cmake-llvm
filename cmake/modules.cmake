
# This file is generated using "tools/Identify header dependencies.ipynb".
    
# Declare components
function(nrf_declare_sdk_modules target_name sdk_root)
    
# Component cmsis
add_library(${target_name}_cmsis INTERFACE)
target_sources(${target_name}_cmsis
    INTERFACE
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

# Component fnmatch
add_library(${target_name}_fnmatch STATIC
    ${sdk_root}/external/fnmatch/fnmatch.c
)
target_sources(${target_name}_fnmatch
    PUBLIC
    ${sdk_root}/external/fnmatch/fnmatch.h
)
target_include_directories(${target_name}_fnmatch PUBLIC
    ${sdk_root}/external/fnmatch
)

# Component nrf52840_cfg
add_library(${target_name}_nrf52840_cfg INTERFACE)
target_sources(${target_name}_nrf52840_cfg
    INTERFACE
    ${sdk_root}/config/nrf52840/config/sdk_config.h
)
target_include_directories(${target_name}_nrf52840_cfg INTERFACE
    ${sdk_root}/config/nrf52840/config
)

# Component protothreads
add_library(${target_name}_protothreads INTERFACE)
target_sources(${target_name}_protothreads
    INTERFACE
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

# Component utf_converter
add_library(${target_name}_utf_converter STATIC
    ${sdk_root}/external/utf_converter/utf.c
)
target_sources(${target_name}_utf_converter
    PUBLIC
    ${sdk_root}/external/utf_converter/utf.h
)
target_include_directories(${target_name}_utf_converter PUBLIC
    ${sdk_root}/external/utf_converter
)

# Component nrf52810
add_library(${target_name}_nrf52810 STATIC
    ${sdk_root}/modules/nrfx/mdk/gcc_startup_nrf52810.S
    ${sdk_root}/modules/nrfx/mdk/system_nrf52810.c
)
target_sources(${target_name}_nrf52810
    PUBLIC
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
target_include_directories(${target_name}_nrf52810 PUBLIC
    ${sdk_root}/modules/nrfx/mdk
)
target_link_libraries(${target_name}_nrf52810 PUBLIC
    ${target_name}_cmsis
)

# Component nrf52811
add_library(${target_name}_nrf52811 STATIC
    ${sdk_root}/modules/nrfx/mdk/gcc_startup_nrf52811.S
    ${sdk_root}/modules/nrfx/mdk/system_nrf52811.c
)
target_sources(${target_name}_nrf52811
    PUBLIC
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
target_include_directories(${target_name}_nrf52811 PUBLIC
    ${sdk_root}/modules/nrfx/mdk
)
target_link_libraries(${target_name}_nrf52811 PUBLIC
    ${target_name}_cmsis
)

# Component nrf52832
add_library(${target_name}_nrf52832 STATIC
    ${sdk_root}/modules/nrfx/mdk/gcc_startup_nrf52.S
    ${sdk_root}/modules/nrfx/mdk/system_nrf52.c
)
target_sources(${target_name}_nrf52832
    PUBLIC
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
target_include_directories(${target_name}_nrf52832 PUBLIC
    ${sdk_root}/modules/nrfx/mdk
)
target_link_libraries(${target_name}_nrf52832 PUBLIC
    ${target_name}_cmsis
)

# Component nrf52840
add_library(${target_name}_nrf52840 STATIC
    ${sdk_root}/modules/nrfx/mdk/gcc_startup_nrf52840.S
    ${sdk_root}/modules/nrfx/mdk/system_nrf52840.c
)
target_sources(${target_name}_nrf52840
    PUBLIC
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
target_include_directories(${target_name}_nrf52840 PUBLIC
    ${sdk_root}/modules/nrfx/mdk
)
target_link_libraries(${target_name}_nrf52840 PUBLIC
    ${target_name}_cmsis
)

# Component mbr_nrf52810
add_library(${target_name}_mbr_nrf52810 INTERFACE)
target_sources(${target_name}_mbr_nrf52810
    INTERFACE
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

# Component mbr_nrf52832
add_library(${target_name}_mbr_nrf52832 INTERFACE)
target_sources(${target_name}_mbr_nrf52832
    INTERFACE
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

# Component mbr_nrf52840
add_library(${target_name}_mbr_nrf52840 INTERFACE)
target_sources(${target_name}_mbr_nrf52840
    INTERFACE
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

# Component nosd
add_library(${target_name}_nosd STATIC
    ${sdk_root}/components/drivers_nrf/nrf_soc_nosd/nrf_nvic.c
    ${sdk_root}/components/drivers_nrf/nrf_soc_nosd/nrf_soc.c
)
target_sources(${target_name}_nosd
    PUBLIC
    ${sdk_root}/components/drivers_nrf/nrf_soc_nosd/nrf_error.h
    ${sdk_root}/components/drivers_nrf/nrf_soc_nosd/nrf_nvic.h
    ${sdk_root}/components/drivers_nrf/nrf_soc_nosd/nrf_sdm.h
    ${sdk_root}/components/drivers_nrf/nrf_soc_nosd/nrf_soc.h
)
target_include_directories(${target_name}_nosd PUBLIC
    ${sdk_root}/components/drivers_nrf/nrf_soc_nosd
)
target_link_libraries(${target_name}_nosd PUBLIC
    ${target_name}_mdk
)

# Component s112
add_library(${target_name}_s112 INTERFACE)
target_sources(${target_name}_s112
    INTERFACE
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

# Component s132
add_library(${target_name}_s132 INTERFACE)
target_sources(${target_name}_s132
    INTERFACE
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

# Component s140
add_library(${target_name}_s140 INTERFACE)
target_sources(${target_name}_s140
    INTERFACE
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

# Component ble_common
add_library(${target_name}_ble_common INTERFACE)
target_sources(${target_name}_ble_common
    INTERFACE
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

# Component ble_radio_notification
add_library(${target_name}_ble_radio_notification STATIC
    ${sdk_root}/components/ble/ble_radio_notification/ble_radio_notification.c
)
target_sources(${target_name}_ble_radio_notification
    PUBLIC
    ${sdk_root}/components/ble/ble_radio_notification/ble_radio_notification.h
)
target_include_directories(${target_name}_ble_radio_notification PUBLIC
    ${sdk_root}/components/ble/ble_radio_notification
)
target_link_libraries(${target_name}_ble_radio_notification PUBLIC
    ${target_name}_softdevice
)

# Component util
add_library(${target_name}_util STATIC
    ${sdk_root}/components/libraries/util/app_util_platform.c
    ${sdk_root}/components/libraries/util/nrf_assert.c
)
target_sources(${target_name}_util
    PUBLIC
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
target_include_directories(${target_name}_util PUBLIC
    ${sdk_root}/components/ble/common
    ${sdk_root}/components/libraries/util
)
target_link_libraries(${target_name}_util PUBLIC
    ${target_name}_config
    ${target_name}_mdk
    ${target_name}_softdevice
)

# Component app_uart_api
add_library(${target_name}_app_uart_api INTERFACE)
target_sources(${target_name}_app_uart_api
    INTERFACE
    ${sdk_root}/components/libraries/uart/app_uart.h
)
target_include_directories(${target_name}_app_uart_api INTERFACE
    ${sdk_root}/components/libraries/uart
)
target_link_libraries(${target_name}_app_uart_api INTERFACE
    ${target_name}_util
)

# Component atomic
add_library(${target_name}_atomic STATIC
    ${sdk_root}/components/libraries/atomic/nrf_atomic.c
)
target_sources(${target_name}_atomic
    PUBLIC
    ${sdk_root}/components/libraries/atomic/nrf_atomic.h
    ${sdk_root}/components/libraries/atomic/nrf_atomic_internal.h
    ${sdk_root}/components/libraries/atomic/nrf_atomic_sanity_check.h
)
target_include_directories(${target_name}_atomic PUBLIC
    ${sdk_root}/components/libraries/atomic
)
target_link_libraries(${target_name}_atomic PUBLIC
    ${target_name}_util
)

# Component ble_advdata
add_library(${target_name}_ble_advdata STATIC
    ${sdk_root}/components/ble/common/ble_advdata.c
)
target_sources(${target_name}_ble_advdata
    PUBLIC
    ${sdk_root}/components/ble/common/ble_advdata.h
)
target_include_directories(${target_name}_ble_advdata PUBLIC
    ${sdk_root}/components/ble/common
)
target_link_libraries(${target_name}_ble_advdata PUBLIC
    ${target_name}_softdevice
    ${target_name}_util
)

# Component ble_dtm
add_library(${target_name}_ble_dtm STATIC
    ${sdk_root}/components/ble/ble_dtm/ble_dtm.c
    ${sdk_root}/components/ble/ble_dtm/ble_dtm_hw_nrf51.c
    ${sdk_root}/components/ble/ble_dtm/ble_dtm_hw_nrf52.c
)
target_sources(${target_name}_ble_dtm
    PUBLIC
    ${sdk_root}/components/ble/ble_dtm/ble_dtm.h
    ${sdk_root}/components/ble/ble_dtm/ble_dtm_hw.h
)
target_include_directories(${target_name}_ble_dtm PUBLIC
    ${sdk_root}/components/ble/ble_dtm
)
target_link_libraries(${target_name}_ble_dtm PUBLIC
    ${target_name}_mdk
)
target_link_libraries(${target_name}_ble_dtm PRIVATE
    ${target_name}_util
)

# Component ble_qwr
add_library(${target_name}_ble_qwr STATIC
    ${sdk_root}/components/ble/nrf_ble_qwr/nrf_ble_qwr.c
)
target_sources(${target_name}_ble_qwr
    PUBLIC
    ${sdk_root}/components/ble/nrf_ble_qwr/nrf_ble_qwr.h
)
target_include_directories(${target_name}_ble_qwr PUBLIC
    ${sdk_root}/components/ble/nrf_ble_qwr
)
target_link_libraries(${target_name}_ble_qwr PUBLIC
    ${target_name}_softdevice
    ${target_name}_util
)

# Component ble_racp
add_library(${target_name}_ble_racp STATIC
    ${sdk_root}/components/ble/ble_racp/ble_racp.c
)
target_sources(${target_name}_ble_racp
    PUBLIC
    ${sdk_root}/components/ble/ble_racp/ble_racp.h
)
target_include_directories(${target_name}_ble_racp PUBLIC
    ${sdk_root}/components/ble/ble_racp
)
target_link_libraries(${target_name}_ble_racp PUBLIC
    ${target_name}_softdevice
)
target_link_libraries(${target_name}_ble_racp PRIVATE
    ${target_name}_util
)

# Component ble_srv_common
add_library(${target_name}_ble_srv_common STATIC
    ${sdk_root}/components/ble/common/ble_srv_common.c
)
target_link_libraries(${target_name}_ble_srv_common PRIVATE
    ${target_name}_softdevice
    ${target_name}_util
)

# Component block_dev
add_library(${target_name}_block_dev INTERFACE)
target_sources(${target_name}_block_dev
    INTERFACE
    ${sdk_root}/components/libraries/block_dev/nrf_block_dev.h
)
target_include_directories(${target_name}_block_dev INTERFACE
    ${sdk_root}/components/libraries/block_dev
)
target_link_libraries(${target_name}_block_dev INTERFACE
    ${target_name}_util
)

# Component crc16
add_library(${target_name}_crc16 STATIC
    ${sdk_root}/components/libraries/crc16/crc16.c
)
target_sources(${target_name}_crc16
    PUBLIC
    ${sdk_root}/components/libraries/crc16/crc16.h
)
target_include_directories(${target_name}_crc16 PUBLIC
    ${sdk_root}/components/libraries/crc16
)
target_link_libraries(${target_name}_crc16 PRIVATE
    ${target_name}_util
)

# Component fifo
add_library(${target_name}_fifo STATIC
    ${sdk_root}/components/libraries/fifo/app_fifo.c
)
target_sources(${target_name}_fifo
    PUBLIC
    ${sdk_root}/components/libraries/fifo/app_fifo.h
)
target_include_directories(${target_name}_fifo PUBLIC
    ${sdk_root}/components/libraries/fifo
)
target_link_libraries(${target_name}_fifo PRIVATE
    ${target_name}_util
)

# Component fprintf
add_library(${target_name}_fprintf STATIC
    ${sdk_root}/external/fprintf/nrf_fprintf.c
    ${sdk_root}/external/fprintf/nrf_fprintf_format.c
)
target_sources(${target_name}_fprintf
    PUBLIC
    ${sdk_root}/external/fprintf/nrf_fprintf.h
    ${sdk_root}/external/fprintf/nrf_fprintf_format.h
)
target_include_directories(${target_name}_fprintf PUBLIC
    ${sdk_root}/external/fprintf
)
target_link_libraries(${target_name}_fprintf PRIVATE
    ${target_name}_util
)

# Component scheduler
add_library(${target_name}_scheduler STATIC
    ${sdk_root}/components/libraries/scheduler/app_scheduler.c
)
target_sources(${target_name}_scheduler
    PUBLIC
    ${sdk_root}/components/libraries/scheduler/app_scheduler.h
)
target_include_directories(${target_name}_scheduler PUBLIC
    ${sdk_root}/components/libraries/scheduler
)
target_link_libraries(${target_name}_scheduler PUBLIC
    ${target_name}_config
    ${target_name}_util
)
target_link_libraries(${target_name}_scheduler PRIVATE
    ${target_name}_softdevice
)

# Component section_vars
add_library(${target_name}_section_vars INTERFACE)
target_sources(${target_name}_section_vars
    INTERFACE
    ${sdk_root}/components/libraries/experimental_section_vars/nrf_section.h
)
target_include_directories(${target_name}_section_vars INTERFACE
    ${sdk_root}/components/libraries/experimental_section_vars
)
target_link_libraries(${target_name}_section_vars INTERFACE
    ${target_name}_util
)

# Component segger_rtt
add_library(${target_name}_segger_rtt STATIC
    ${sdk_root}/external/segger_rtt/SEGGER_RTT.c
    ${sdk_root}/external/segger_rtt/SEGGER_RTT_Syscalls_GCC.c
    ${sdk_root}/external/segger_rtt/SEGGER_RTT_printf.c
)
target_sources(${target_name}_segger_rtt
    PUBLIC
    ${sdk_root}/external/segger_rtt/SEGGER_RTT.h
    ${sdk_root}/external/segger_rtt/SEGGER_RTT_Conf.h
)
target_include_directories(${target_name}_segger_rtt PUBLIC
    ${sdk_root}/external/segger_rtt
)
target_link_libraries(${target_name}_segger_rtt PUBLIC
    ${target_name}_config
    ${target_name}_util
)

# Component strerror
add_library(${target_name}_strerror STATIC
    ${sdk_root}/components/libraries/strerror/nrf_strerror.c
)
target_sources(${target_name}_strerror
    PUBLIC
    ${sdk_root}/components/libraries/strerror/nrf_strerror.h
)
target_include_directories(${target_name}_strerror PUBLIC
    ${sdk_root}/components/libraries/strerror
)
target_link_libraries(${target_name}_strerror PUBLIC
    ${target_name}_util
)

# Component atomic_flags
add_library(${target_name}_atomic_flags STATIC
    ${sdk_root}/components/libraries/atomic_flags/nrf_atflags.c
)
target_sources(${target_name}_atomic_flags
    PUBLIC
    ${sdk_root}/components/libraries/atomic_flags/nrf_atflags.h
)
target_include_directories(${target_name}_atomic_flags PUBLIC
    ${sdk_root}/components/libraries/atomic_flags
)
target_link_libraries(${target_name}_atomic_flags PRIVATE
    ${target_name}_atomic
    ${target_name}_mdk
    ${target_name}_util
)

# Component fatfs
add_library(${target_name}_fatfs STATIC
    ${sdk_root}/external/fatfs/port/diskio_blkdev.c
    ${sdk_root}/external/fatfs/src/ff.c
)
target_sources(${target_name}_fatfs
    PUBLIC
    ${sdk_root}/external/fatfs/port/diskio_blkdev.h
    ${sdk_root}/external/fatfs/src/diskio.h
    ${sdk_root}/external/fatfs/src/ff.h
    ${sdk_root}/external/fatfs/src/ffconf.h
    ${sdk_root}/external/fatfs/src/integer.h
)
target_include_directories(${target_name}_fatfs PUBLIC
    ${sdk_root}/external/fatfs/port
    ${sdk_root}/external/fatfs/src
)
target_link_libraries(${target_name}_fatfs PUBLIC
    ${target_name}_block_dev
)

# Component log_api
add_library(${target_name}_log_api INTERFACE)
target_sources(${target_name}_log_api
    INTERFACE
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

# Component mutex
add_library(${target_name}_mutex INTERFACE)
target_sources(${target_name}_mutex
    INTERFACE
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

# Component ringbuf
add_library(${target_name}_ringbuf STATIC
    ${sdk_root}/components/libraries/ringbuf/nrf_ringbuf.c
)
target_sources(${target_name}_ringbuf
    PUBLIC
    ${sdk_root}/components/libraries/ringbuf/nrf_ringbuf.h
)
target_include_directories(${target_name}_ringbuf PUBLIC
    ${sdk_root}/components/libraries/ringbuf
)
target_link_libraries(${target_name}_ringbuf PUBLIC
    ${target_name}_atomic
    ${target_name}_util
)

# Component section_iter
add_library(${target_name}_section_iter STATIC
    ${sdk_root}/components/libraries/experimental_section_vars/nrf_section_iter.c
)
target_sources(${target_name}_section_iter
    PUBLIC
    ${sdk_root}/components/libraries/experimental_section_vars/nrf_section_iter.h
)
target_include_directories(${target_name}_section_iter PUBLIC
    ${sdk_root}/components/libraries/experimental_section_vars
)
target_link_libraries(${target_name}_section_iter PUBLIC
    ${target_name}_section_vars
    ${target_name}_util
)

# Component atomic_fifo
add_library(${target_name}_atomic_fifo STATIC
    ${sdk_root}/components/libraries/atomic_fifo/nrf_atfifo.c
)
target_sources(${target_name}_atomic_fifo
    PUBLIC
    ${sdk_root}/components/libraries/atomic_fifo/nrf_atfifo.h
    ${sdk_root}/components/libraries/atomic_fifo/nrf_atfifo_internal.h
)
target_include_directories(${target_name}_atomic_fifo PUBLIC
    ${sdk_root}/components/libraries/atomic_fifo
)
target_link_libraries(${target_name}_atomic_fifo PUBLIC
    ${target_name}_config
    ${target_name}_log_api
    ${target_name}_mdk
    ${target_name}_util
)

# Component balloc
add_library(${target_name}_balloc STATIC
    ${sdk_root}/components/libraries/balloc/nrf_balloc.c
)
target_sources(${target_name}_balloc
    PUBLIC
    ${sdk_root}/components/libraries/balloc/nrf_balloc.h
)
target_include_directories(${target_name}_balloc PUBLIC
    ${sdk_root}/components/libraries/balloc
)
target_link_libraries(${target_name}_balloc PUBLIC
    ${target_name}_config
    ${target_name}_log_api
    ${target_name}_section_vars
    ${target_name}_util
)

# Component ble_db_discovery
add_library(${target_name}_ble_db_discovery STATIC
    ${sdk_root}/components/ble/ble_db_discovery/ble_db_discovery.c
)
target_sources(${target_name}_ble_db_discovery
    PUBLIC
    ${sdk_root}/components/ble/ble_db_discovery/ble_db_discovery.h
)
target_include_directories(${target_name}_ble_db_discovery PUBLIC
    ${sdk_root}/components/ble/ble_db_discovery
)
target_link_libraries(${target_name}_ble_db_discovery PUBLIC
    ${target_name}_ble_common
    ${target_name}_softdevice
)
target_link_libraries(${target_name}_ble_db_discovery PRIVATE
    ${target_name}_log_api
    ${target_name}_util
)

# Component ble_gatt
add_library(${target_name}_ble_gatt STATIC
    ${sdk_root}/components/ble/nrf_ble_gatt/nrf_ble_gatt.c
)
target_sources(${target_name}_ble_gatt
    PUBLIC
    ${sdk_root}/components/ble/nrf_ble_gatt/nrf_ble_gatt.h
)
target_include_directories(${target_name}_ble_gatt PUBLIC
    ${sdk_root}/components/ble/nrf_ble_gatt
)
target_link_libraries(${target_name}_ble_gatt PUBLIC
    ${target_name}_config
    ${target_name}_softdevice
    ${target_name}_util
)
target_link_libraries(${target_name}_ble_gatt PRIVATE
    ${target_name}_log_api
    ${target_name}_strerror
)

# Component ble_scan
add_library(${target_name}_ble_scan STATIC
    ${sdk_root}/components/ble/nrf_ble_scan/nrf_ble_scan.c
)
target_sources(${target_name}_ble_scan
    PUBLIC
    ${sdk_root}/components/ble/nrf_ble_scan/nrf_ble_scan.h
)
target_include_directories(${target_name}_ble_scan PUBLIC
    ${sdk_root}/components/ble/nrf_ble_scan
)
target_link_libraries(${target_name}_ble_scan PUBLIC
    ${target_name}_config
    ${target_name}_softdevice
    ${target_name}_util
)
target_link_libraries(${target_name}_ble_scan PRIVATE
    ${target_name}_ble_advdata
    ${target_name}_log_api
)

# Component block_dev_empty
add_library(${target_name}_block_dev_empty STATIC
    ${sdk_root}/components/libraries/block_dev/empty/nrf_block_dev_empty.c
)
target_sources(${target_name}_block_dev_empty
    PUBLIC
    ${sdk_root}/components/libraries/block_dev/empty/nrf_block_dev_empty.h
)
target_include_directories(${target_name}_block_dev_empty PUBLIC
    ${sdk_root}/components/libraries/block_dev/empty
)
target_link_libraries(${target_name}_block_dev_empty PUBLIC
    ${target_name}_block_dev
    ${target_name}_log_api
)
target_link_libraries(${target_name}_block_dev_empty PRIVATE
    ${target_name}_util
)

# Component block_dev_ram
add_library(${target_name}_block_dev_ram STATIC
    ${sdk_root}/components/libraries/block_dev/ram/nrf_block_dev_ram.c
)
target_sources(${target_name}_block_dev_ram
    PUBLIC
    ${sdk_root}/components/libraries/block_dev/ram/nrf_block_dev_ram.h
)
target_include_directories(${target_name}_block_dev_ram PUBLIC
    ${sdk_root}/components/libraries/block_dev/ram
)
target_link_libraries(${target_name}_block_dev_ram PUBLIC
    ${target_name}_block_dev
    ${target_name}_log_api
)
target_link_libraries(${target_name}_block_dev_ram PRIVATE
    ${target_name}_util
)

# Component mpu
add_library(${target_name}_mpu STATIC
    ${sdk_root}/components/libraries/mpu/nrf_mpu_lib.c
)
target_sources(${target_name}_mpu
    PUBLIC
    ${sdk_root}/components/libraries/mpu/nrf_mpu_lib.h
)
target_include_directories(${target_name}_mpu PUBLIC
    ${sdk_root}/components/libraries/mpu
)
target_link_libraries(${target_name}_mpu PUBLIC
    ${target_name}_util
)
target_link_libraries(${target_name}_mpu PRIVATE
    ${target_name}_config
    ${target_name}_log_api
    ${target_name}_mdk
)

# Component nrfx
add_library(${target_name}_nrfx INTERFACE)
target_sources(${target_name}_nrfx
    INTERFACE
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

# Component queue
add_library(${target_name}_queue STATIC
    ${sdk_root}/components/libraries/queue/nrf_queue.c
)
target_sources(${target_name}_queue
    PUBLIC
    ${sdk_root}/components/libraries/queue/nrf_queue.h
)
target_include_directories(${target_name}_queue PUBLIC
    ${sdk_root}/components/libraries/queue
)
target_link_libraries(${target_name}_queue PUBLIC
    ${target_name}_log_api
    ${target_name}_section_vars
    ${target_name}_util
)

# Component softdevice_common
add_library(${target_name}_softdevice_common INTERFACE)
target_sources(${target_name}_softdevice_common
    INTERFACE
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

# Component sortlist
add_library(${target_name}_sortlist STATIC
    ${sdk_root}/components/libraries/sortlist/nrf_sortlist.c
)
target_sources(${target_name}_sortlist
    PUBLIC
    ${sdk_root}/components/libraries/sortlist/nrf_sortlist.h
)
target_include_directories(${target_name}_sortlist PUBLIC
    ${sdk_root}/components/libraries/sortlist
)
target_link_libraries(${target_name}_sortlist PUBLIC
    ${target_name}_config
)
target_link_libraries(${target_name}_sortlist PRIVATE
    ${target_name}_log_api
    ${target_name}_util
)

# Component ble_advertising
add_library(${target_name}_ble_advertising STATIC
    ${sdk_root}/components/ble/ble_advertising/ble_advertising.c
)
target_sources(${target_name}_ble_advertising
    PUBLIC
    ${sdk_root}/components/ble/ble_advertising/ble_advertising.h
)
target_include_directories(${target_name}_ble_advertising PUBLIC
    ${sdk_root}/components/ble/ble_advertising
)
target_link_libraries(${target_name}_ble_advertising PUBLIC
    ${target_name}_ble_advdata
    ${target_name}_softdevice
)
target_link_libraries(${target_name}_ble_advertising PRIVATE
    ${target_name}_log_api
    ${target_name}_softdevice_common
    ${target_name}_util
)

# Component ble_conn_state
add_library(${target_name}_ble_conn_state STATIC
    ${sdk_root}/components/ble/common/ble_conn_state.c
)
target_sources(${target_name}_ble_conn_state
    PUBLIC
    ${sdk_root}/components/ble/common/ble_conn_state.h
)
target_include_directories(${target_name}_ble_conn_state PUBLIC
    ${sdk_root}/components/ble/common
)
target_link_libraries(${target_name}_ble_conn_state PUBLIC
    ${target_name}_atomic
    ${target_name}_softdevice
)
target_link_libraries(${target_name}_ble_conn_state PRIVATE
    ${target_name}_atomic_flags
    ${target_name}_softdevice_common
    ${target_name}_util
)

# Component delay
add_library(${target_name}_delay INTERFACE)
target_sources(${target_name}_delay
    INTERFACE
    ${sdk_root}/components/libraries/delay/nrf_delay.h
)
target_include_directories(${target_name}_delay INTERFACE
    ${sdk_root}/components/libraries/delay
)
target_link_libraries(${target_name}_delay INTERFACE
    ${target_name}_nrfx
)

# Component hal_clock
add_library(${target_name}_hal_clock INTERFACE)
target_sources(${target_name}_hal_clock
    INTERFACE
    ${sdk_root}/modules/nrfx/hal/nrf_clock.h
)
target_include_directories(${target_name}_hal_clock INTERFACE
    ${sdk_root}/modules/nrfx
    ${sdk_root}/modules/nrfx/hal
)
target_link_libraries(${target_name}_hal_clock INTERFACE
    ${target_name}_nrfx
)

# Component hal_gpio
add_library(${target_name}_hal_gpio INTERFACE)
target_sources(${target_name}_hal_gpio
    INTERFACE
    ${sdk_root}/modules/nrfx/hal/nrf_gpio.h
)
target_include_directories(${target_name}_hal_gpio INTERFACE
    ${sdk_root}/modules/nrfx
    ${sdk_root}/modules/nrfx/hal
)
target_link_libraries(${target_name}_hal_gpio INTERFACE
    ${target_name}_nrfx
)

# Component hal_gpiote
add_library(${target_name}_hal_gpiote INTERFACE)
target_sources(${target_name}_hal_gpiote
    INTERFACE
    ${sdk_root}/modules/nrfx/hal/nrf_gpiote.h
)
target_include_directories(${target_name}_hal_gpiote INTERFACE
    ${sdk_root}/modules/nrfx
    ${sdk_root}/modules/nrfx/hal
)
target_link_libraries(${target_name}_hal_gpiote INTERFACE
    ${target_name}_nrfx
)

# Component hal_nvmc
add_library(${target_name}_hal_nvmc INTERFACE)
target_sources(${target_name}_hal_nvmc
    INTERFACE
    ${sdk_root}/modules/nrfx/hal/nrf_nvmc.h
)
target_include_directories(${target_name}_hal_nvmc INTERFACE
    ${sdk_root}/modules/nrfx
    ${sdk_root}/modules/nrfx/hal
)
target_link_libraries(${target_name}_hal_nvmc INTERFACE
    ${target_name}_nrfx
)

# Component hal_power
add_library(${target_name}_hal_power INTERFACE)
target_sources(${target_name}_hal_power
    INTERFACE
    ${sdk_root}/modules/nrfx/hal/nrf_power.h
)
target_include_directories(${target_name}_hal_power INTERFACE
    ${sdk_root}/modules/nrfx
    ${sdk_root}/modules/nrfx/hal
)
target_link_libraries(${target_name}_hal_power INTERFACE
    ${target_name}_nrfx
)

# Component hal_ppi
add_library(${target_name}_hal_ppi INTERFACE)
target_sources(${target_name}_hal_ppi
    INTERFACE
    ${sdk_root}/modules/nrfx/hal/nrf_ppi.h
)
target_include_directories(${target_name}_hal_ppi INTERFACE
    ${sdk_root}/modules/nrfx
    ${sdk_root}/modules/nrfx/hal
)
target_link_libraries(${target_name}_hal_ppi INTERFACE
    ${target_name}_nrfx
)

# Component hal_qspi
add_library(${target_name}_hal_qspi INTERFACE)
target_sources(${target_name}_hal_qspi
    INTERFACE
    ${sdk_root}/modules/nrfx/hal/nrf_qspi.h
)
target_include_directories(${target_name}_hal_qspi INTERFACE
    ${sdk_root}/modules/nrfx
    ${sdk_root}/modules/nrfx/hal
)
target_link_libraries(${target_name}_hal_qspi INTERFACE
    ${target_name}_nrfx
)

# Component hal_regulators
add_library(${target_name}_hal_regulators INTERFACE)
target_sources(${target_name}_hal_regulators
    INTERFACE
    ${sdk_root}/modules/nrfx/hal/nrf_regulators.h
)
target_include_directories(${target_name}_hal_regulators INTERFACE
    ${sdk_root}/modules/nrfx
    ${sdk_root}/modules/nrfx/hal
)
target_link_libraries(${target_name}_hal_regulators INTERFACE
    ${target_name}_nrfx
)

# Component hal_rtc
add_library(${target_name}_hal_rtc INTERFACE)
target_sources(${target_name}_hal_rtc
    INTERFACE
    ${sdk_root}/modules/nrfx/hal/nrf_rtc.h
)
target_include_directories(${target_name}_hal_rtc INTERFACE
    ${sdk_root}/modules/nrfx
    ${sdk_root}/modules/nrfx/hal
)
target_link_libraries(${target_name}_hal_rtc INTERFACE
    ${target_name}_nrfx
)

# Component hal_spi
add_library(${target_name}_hal_spi INTERFACE)
target_sources(${target_name}_hal_spi
    INTERFACE
    ${sdk_root}/modules/nrfx/hal/nrf_spi.h
)
target_include_directories(${target_name}_hal_spi INTERFACE
    ${sdk_root}/modules/nrfx
    ${sdk_root}/modules/nrfx/hal
)
target_link_libraries(${target_name}_hal_spi INTERFACE
    ${target_name}_nrfx
)

# Component hal_spim
add_library(${target_name}_hal_spim INTERFACE)
target_sources(${target_name}_hal_spim
    INTERFACE
    ${sdk_root}/modules/nrfx/hal/nrf_spim.h
)
target_include_directories(${target_name}_hal_spim INTERFACE
    ${sdk_root}/modules/nrfx
    ${sdk_root}/modules/nrfx/hal
)
target_link_libraries(${target_name}_hal_spim INTERFACE
    ${target_name}_nrfx
)

# Component hal_systick
add_library(${target_name}_hal_systick INTERFACE)
target_sources(${target_name}_hal_systick
    INTERFACE
    ${sdk_root}/modules/nrfx/hal/nrf_systick.h
)
target_include_directories(${target_name}_hal_systick INTERFACE
    ${sdk_root}/modules/nrfx
    ${sdk_root}/modules/nrfx/hal
)
target_link_libraries(${target_name}_hal_systick INTERFACE
    ${target_name}_nrfx
)

# Component hal_timer
add_library(${target_name}_hal_timer INTERFACE)
target_sources(${target_name}_hal_timer
    INTERFACE
    ${sdk_root}/modules/nrfx/hal/nrf_timer.h
)
target_include_directories(${target_name}_hal_timer INTERFACE
    ${sdk_root}/modules/nrfx
    ${sdk_root}/modules/nrfx/hal
)
target_link_libraries(${target_name}_hal_timer INTERFACE
    ${target_name}_nrfx
)

# Component hal_twi
add_library(${target_name}_hal_twi INTERFACE)
target_sources(${target_name}_hal_twi
    INTERFACE
    ${sdk_root}/modules/nrfx/hal/nrf_twi.h
)
target_include_directories(${target_name}_hal_twi INTERFACE
    ${sdk_root}/modules/nrfx
    ${sdk_root}/modules/nrfx/hal
)
target_link_libraries(${target_name}_hal_twi INTERFACE
    ${target_name}_nrfx
)

# Component hal_twim
add_library(${target_name}_hal_twim INTERFACE)
target_sources(${target_name}_hal_twim
    INTERFACE
    ${sdk_root}/modules/nrfx/hal/nrf_twim.h
)
target_include_directories(${target_name}_hal_twim INTERFACE
    ${sdk_root}/modules/nrfx
    ${sdk_root}/modules/nrfx/hal
)
target_link_libraries(${target_name}_hal_twim INTERFACE
    ${target_name}_nrfx
)

# Component hal_uart
add_library(${target_name}_hal_uart INTERFACE)
target_sources(${target_name}_hal_uart
    INTERFACE
    ${sdk_root}/modules/nrfx/hal/nrf_uart.h
)
target_include_directories(${target_name}_hal_uart INTERFACE
    ${sdk_root}/modules/nrfx
    ${sdk_root}/modules/nrfx/hal
)
target_link_libraries(${target_name}_hal_uart INTERFACE
    ${target_name}_nrfx
)

# Component hal_uarte
add_library(${target_name}_hal_uarte INTERFACE)
target_sources(${target_name}_hal_uarte
    INTERFACE
    ${sdk_root}/modules/nrfx/hal/nrf_uarte.h
)
target_include_directories(${target_name}_hal_uarte INTERFACE
    ${sdk_root}/modules/nrfx
    ${sdk_root}/modules/nrfx/hal
)
target_link_libraries(${target_name}_hal_uarte INTERFACE
    ${target_name}_nrfx
)

# Component hal_usbd
add_library(${target_name}_hal_usbd INTERFACE)
target_sources(${target_name}_hal_usbd
    INTERFACE
    ${sdk_root}/modules/nrfx/hal/nrf_usbd.h
)
target_include_directories(${target_name}_hal_usbd INTERFACE
    ${sdk_root}/modules/nrfx
    ${sdk_root}/modules/nrfx/hal
)
target_link_libraries(${target_name}_hal_usbd INTERFACE
    ${target_name}_nrfx
)

# Component memobj
add_library(${target_name}_memobj STATIC
    ${sdk_root}/components/libraries/memobj/nrf_memobj.c
)
target_sources(${target_name}_memobj
    PUBLIC
    ${sdk_root}/components/libraries/memobj/nrf_memobj.h
)
target_include_directories(${target_name}_memobj PUBLIC
    ${sdk_root}/components/libraries/memobj
)
target_link_libraries(${target_name}_memobj PUBLIC
    ${target_name}_balloc
    ${target_name}_util
)
target_link_libraries(${target_name}_memobj PRIVATE
    ${target_name}_atomic
)

# Component nrfx_atomic
add_library(${target_name}_nrfx_atomic STATIC
    ${sdk_root}/modules/nrfx/soc/nrfx_atomic.c
)
target_sources(${target_name}_nrfx_atomic
    PUBLIC
    ${sdk_root}/modules/nrfx/soc/nrfx_atomic.h
    PRIVATE
    ${sdk_root}/modules/nrfx/soc/nrfx_atomic_internal.h
)
target_include_directories(${target_name}_nrfx_atomic PUBLIC
    ${sdk_root}/modules/nrfx/soc
)
target_link_libraries(${target_name}_nrfx_atomic PUBLIC
    ${target_name}_nrfx
)

# Component nrfx_power_clock
add_library(${target_name}_nrfx_power_clock INTERFACE)
target_sources(${target_name}_nrfx_power_clock
    INTERFACE
    ${sdk_root}/modules/nrfx/drivers/include/nrfx_power_clock.h
)
target_include_directories(${target_name}_nrfx_power_clock INTERFACE
    ${sdk_root}/modules/nrfx/drivers/include
)
target_link_libraries(${target_name}_nrfx_power_clock INTERFACE
    ${target_name}_nrfx
)

# Component prs
add_library(${target_name}_prs STATIC
    ${sdk_root}/modules/nrfx/drivers/src/prs/nrfx_prs.c
)
target_sources(${target_name}_prs
    PUBLIC
    ${sdk_root}/modules/nrfx/drivers/src/prs/nrfx_prs.h
    PRIVATE
    ${sdk_root}/modules/nrfx/drivers/src/prs/nrfx_prs.h
)
target_include_directories(${target_name}_prs PUBLIC
    ${sdk_root}/modules/nrfx/drivers/src
)
target_include_directories(${target_name}_prs PRIVATE
    ${sdk_root}/modules/nrfx/drivers/src/prs
)
target_link_libraries(${target_name}_prs PUBLIC
    ${target_name}_nrfx
)

# Component task_manager
add_library(${target_name}_task_manager STATIC
    ${sdk_root}/components/libraries/experimental_task_manager/task_manager.c
)
target_sources(${target_name}_task_manager
    PUBLIC
    ${sdk_root}/components/libraries/experimental_task_manager/task_manager.h
)
target_include_directories(${target_name}_task_manager PUBLIC
    ${sdk_root}/components/libraries/experimental_task_manager
)
target_link_libraries(${target_name}_task_manager PUBLIC
    ${target_name}_mdk
    ${target_name}_util
)
target_link_libraries(${target_name}_task_manager PRIVATE
    ${target_name}_atomic
    ${target_name}_log_api
    ${target_name}_mpu
)

# Component ble_link_ctx_manager
add_library(${target_name}_ble_link_ctx_manager STATIC
    ${sdk_root}/components/ble/ble_link_ctx_manager/ble_link_ctx_manager.c
)
target_sources(${target_name}_ble_link_ctx_manager
    PUBLIC
    ${sdk_root}/components/ble/ble_link_ctx_manager/ble_link_ctx_manager.h
)
target_include_directories(${target_name}_ble_link_ctx_manager PUBLIC
    ${sdk_root}/components/ble/ble_link_ctx_manager
)
target_link_libraries(${target_name}_ble_link_ctx_manager PUBLIC
    ${target_name}_ble_conn_state
    ${target_name}_util
)

# Component boards
add_library(${target_name}_boards STATIC
    ${sdk_root}/components/boards/boards.c
)
target_sources(${target_name}_boards
    PUBLIC
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
target_include_directories(${target_name}_boards PUBLIC
    ${sdk_root}/components/boards
)
target_link_libraries(${target_name}_boards PUBLIC
    ${target_name}_hal_gpio
    ${target_name}_util
)

# Component button_api
add_library(${target_name}_button_api INTERFACE)
target_sources(${target_name}_button_api
    INTERFACE
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

# Component fstorage
add_library(${target_name}_fstorage STATIC
    ${sdk_root}/components/libraries/fstorage/nrf_fstorage.c
    ${sdk_root}/components/libraries/fstorage/nrf_fstorage_nvmc.c
    ${sdk_root}/components/libraries/fstorage/nrf_fstorage_sd.c
)
target_sources(${target_name}_fstorage
    PUBLIC
    ${sdk_root}/components/libraries/fstorage/nrf_fstorage.h
    ${sdk_root}/components/libraries/fstorage/nrf_fstorage_nvmc.h
    ${sdk_root}/components/libraries/fstorage/nrf_fstorage_sd.h
)
target_include_directories(${target_name}_fstorage PUBLIC
    ${sdk_root}/components/libraries/fstorage
)
target_link_libraries(${target_name}_fstorage PUBLIC
    ${target_name}_section_vars
    ${target_name}_util
)
target_link_libraries(${target_name}_fstorage PRIVATE
    ${target_name}_atomic
    ${target_name}_atomic_fifo
    ${target_name}_config
    ${target_name}_hal_nvmc
    ${target_name}_log_api
    ${target_name}_softdevice
    ${target_name}_softdevice_common
)

# Component log_ctrl
add_library(${target_name}_log_ctrl INTERFACE)
target_sources(${target_name}_log_ctrl
    INTERFACE
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

# Component nrfx_clock
add_library(${target_name}_nrfx_clock STATIC
    ${sdk_root}/modules/nrfx/drivers/src/nrfx_clock.c
)
target_sources(${target_name}_nrfx_clock
    PUBLIC
    ${sdk_root}/modules/nrfx/drivers/include/nrfx_clock.h
)
target_include_directories(${target_name}_nrfx_clock PUBLIC
    ${sdk_root}/modules/nrfx/drivers/include
)
target_link_libraries(${target_name}_nrfx_clock PUBLIC
    ${target_name}_hal_clock
    ${target_name}_nrfx
    ${target_name}_nrfx_power_clock
)

# Component nrfx_gpiote
add_library(${target_name}_nrfx_gpiote STATIC
    ${sdk_root}/modules/nrfx/drivers/src/nrfx_gpiote.c
)
target_sources(${target_name}_nrfx_gpiote
    PUBLIC
    ${sdk_root}/modules/nrfx/drivers/include/nrfx_gpiote.h
)
target_include_directories(${target_name}_nrfx_gpiote PUBLIC
    ${sdk_root}/modules/nrfx/drivers/include
)
target_link_libraries(${target_name}_nrfx_gpiote PUBLIC
    ${target_name}_hal_gpio
    ${target_name}_hal_gpiote
    ${target_name}_nrfx
)
target_link_libraries(${target_name}_nrfx_gpiote PRIVATE
    ${target_name}_util
)

# Component nrfx_power
add_library(${target_name}_nrfx_power STATIC
    ${sdk_root}/modules/nrfx/drivers/src/nrfx_power.c
)
target_sources(${target_name}_nrfx_power
    PUBLIC
    ${sdk_root}/modules/nrfx/drivers/include/nrfx_power.h
)
target_include_directories(${target_name}_nrfx_power PUBLIC
    ${sdk_root}/modules/nrfx/drivers/include
)
target_link_libraries(${target_name}_nrfx_power PUBLIC
    ${target_name}_hal_power
    ${target_name}_nrfx
    ${target_name}_nrfx_power_clock
)
target_link_libraries(${target_name}_nrfx_power PRIVATE
    ${target_name}_hal_regulators
)

# Component nrfx_ppi
add_library(${target_name}_nrfx_ppi STATIC
    ${sdk_root}/modules/nrfx/drivers/src/nrfx_ppi.c
)
target_sources(${target_name}_nrfx_ppi
    PUBLIC
    ${sdk_root}/modules/nrfx/drivers/include/nrfx_ppi.h
)
target_include_directories(${target_name}_nrfx_ppi PUBLIC
    ${sdk_root}/modules/nrfx/drivers/include
)
target_link_libraries(${target_name}_nrfx_ppi PUBLIC
    ${target_name}_hal_ppi
    ${target_name}_nrfx
)

# Component nrfx_qspi
add_library(${target_name}_nrfx_qspi STATIC
    ${sdk_root}/modules/nrfx/drivers/src/nrfx_qspi.c
)
target_sources(${target_name}_nrfx_qspi
    PUBLIC
    ${sdk_root}/modules/nrfx/drivers/include/nrfx_qspi.h
)
target_include_directories(${target_name}_nrfx_qspi PUBLIC
    ${sdk_root}/modules/nrfx/drivers/include
)
target_link_libraries(${target_name}_nrfx_qspi PUBLIC
    ${target_name}_hal_qspi
    ${target_name}_nrfx
)

# Component nrfx_rtc
add_library(${target_name}_nrfx_rtc STATIC
    ${sdk_root}/modules/nrfx/drivers/src/nrfx_rtc.c
)
target_sources(${target_name}_nrfx_rtc
    PUBLIC
    ${sdk_root}/modules/nrfx/drivers/include/nrfx_rtc.h
)
target_include_directories(${target_name}_nrfx_rtc PUBLIC
    ${sdk_root}/modules/nrfx/drivers/include
)
target_link_libraries(${target_name}_nrfx_rtc PUBLIC
    ${target_name}_hal_rtc
    ${target_name}_nrfx
)

# Component nrfx_spi
add_library(${target_name}_nrfx_spi STATIC
    ${sdk_root}/modules/nrfx/drivers/src/nrfx_spi.c
)
target_sources(${target_name}_nrfx_spi
    PUBLIC
    ${sdk_root}/modules/nrfx/drivers/include/nrfx_spi.h
)
target_include_directories(${target_name}_nrfx_spi PUBLIC
    ${sdk_root}/modules/nrfx/drivers/include
)
target_link_libraries(${target_name}_nrfx_spi PUBLIC
    ${target_name}_hal_spi
    ${target_name}_nrfx
)
target_link_libraries(${target_name}_nrfx_spi PRIVATE
    ${target_name}_hal_gpio
    ${target_name}_prs
)

# Component nrfx_spim
add_library(${target_name}_nrfx_spim STATIC
    ${sdk_root}/modules/nrfx/drivers/src/nrfx_spim.c
)
target_sources(${target_name}_nrfx_spim
    PUBLIC
    ${sdk_root}/modules/nrfx/drivers/include/nrfx_spim.h
)
target_include_directories(${target_name}_nrfx_spim PUBLIC
    ${sdk_root}/modules/nrfx/drivers/include
)
target_link_libraries(${target_name}_nrfx_spim PUBLIC
    ${target_name}_hal_spim
    ${target_name}_nrfx
)
target_link_libraries(${target_name}_nrfx_spim PRIVATE
    ${target_name}_hal_gpio
    ${target_name}_prs
)

# Component nrfx_systick
add_library(${target_name}_nrfx_systick STATIC
    ${sdk_root}/modules/nrfx/drivers/src/nrfx_systick.c
)
target_sources(${target_name}_nrfx_systick
    PUBLIC
    ${sdk_root}/modules/nrfx/drivers/include/nrfx_systick.h
)
target_include_directories(${target_name}_nrfx_systick PUBLIC
    ${sdk_root}/modules/nrfx/drivers/include
)
target_link_libraries(${target_name}_nrfx_systick PUBLIC
    ${target_name}_hal_systick
    ${target_name}_nrfx
)

# Component nrfx_timer
add_library(${target_name}_nrfx_timer STATIC
    ${sdk_root}/modules/nrfx/drivers/src/nrfx_timer.c
)
target_sources(${target_name}_nrfx_timer
    PUBLIC
    ${sdk_root}/modules/nrfx/drivers/include/nrfx_timer.h
)
target_include_directories(${target_name}_nrfx_timer PUBLIC
    ${sdk_root}/modules/nrfx/drivers/include
)
target_link_libraries(${target_name}_nrfx_timer PUBLIC
    ${target_name}_hal_timer
    ${target_name}_nrfx
)

# Component nrfx_twi
add_library(${target_name}_nrfx_twi STATIC
    ${sdk_root}/modules/nrfx/drivers/src/nrfx_twi.c
)
target_sources(${target_name}_nrfx_twi
    PUBLIC
    ${sdk_root}/modules/nrfx/drivers/include/nrfx_twi.h
)
target_include_directories(${target_name}_nrfx_twi PUBLIC
    ${sdk_root}/modules/nrfx/drivers/include
)
target_link_libraries(${target_name}_nrfx_twi PUBLIC
    ${target_name}_hal_twi
    ${target_name}_nrfx
)
target_link_libraries(${target_name}_nrfx_twi PRIVATE
    ${target_name}_hal_gpio
    ${target_name}_prs
)

# Component nrfx_twim
add_library(${target_name}_nrfx_twim STATIC
    ${sdk_root}/modules/nrfx/drivers/src/nrfx_twim.c
)
target_sources(${target_name}_nrfx_twim
    PUBLIC
    ${sdk_root}/modules/nrfx/drivers/include/nrfx_twim.h
)
target_include_directories(${target_name}_nrfx_twim PUBLIC
    ${sdk_root}/modules/nrfx/drivers/include
)
target_link_libraries(${target_name}_nrfx_twim PUBLIC
    ${target_name}_hal_twim
    ${target_name}_nrfx
)
target_link_libraries(${target_name}_nrfx_twim PRIVATE
    ${target_name}_hal_gpio
    ${target_name}_prs
)

# Component nrfx_uart
add_library(${target_name}_nrfx_uart STATIC
    ${sdk_root}/modules/nrfx/drivers/src/nrfx_uart.c
)
target_sources(${target_name}_nrfx_uart
    PUBLIC
    ${sdk_root}/modules/nrfx/drivers/include/nrfx_uart.h
)
target_include_directories(${target_name}_nrfx_uart PUBLIC
    ${sdk_root}/modules/nrfx/drivers/include
)
target_link_libraries(${target_name}_nrfx_uart PUBLIC
    ${target_name}_hal_uart
    ${target_name}_nrfx
)
target_link_libraries(${target_name}_nrfx_uart PRIVATE
    ${target_name}_hal_gpio
    ${target_name}_prs
)

# Component nrfx_uarte
add_library(${target_name}_nrfx_uarte STATIC
    ${sdk_root}/modules/nrfx/drivers/src/nrfx_uarte.c
)
target_sources(${target_name}_nrfx_uarte
    PUBLIC
    ${sdk_root}/modules/nrfx/drivers/include/nrfx_uarte.h
)
target_include_directories(${target_name}_nrfx_uarte PUBLIC
    ${sdk_root}/modules/nrfx/drivers/include
)
target_link_libraries(${target_name}_nrfx_uarte PUBLIC
    ${target_name}_hal_uarte
    ${target_name}_nrfx
)
target_link_libraries(${target_name}_nrfx_uarte PRIVATE
    ${target_name}_hal_gpio
    ${target_name}_prs
)

# Component timer
add_library(${target_name}_timer STATIC
    ${sdk_root}/components/libraries/timer/app_timer.c
)
target_sources(${target_name}_timer
    PUBLIC
    ${sdk_root}/components/libraries/timer/app_timer.h
)
target_include_directories(${target_name}_timer PUBLIC
    ${sdk_root}/components/libraries/timer
)
target_link_libraries(${target_name}_timer PUBLIC
    ${target_name}_config
    ${target_name}_log_api
    ${target_name}_mdk
    ${target_name}_sortlist
    ${target_name}_util
)
target_link_libraries(${target_name}_timer PRIVATE
    ${target_name}_delay
    ${target_name}_scheduler
    ${target_name}_softdevice
)

# Component app_error_handler
add_library(${target_name}_app_error_handler STATIC
    ${sdk_root}/components/libraries/util/app_error.c
    ${sdk_root}/components/libraries/util/app_error_handler_gcc.c
    ${sdk_root}/components/libraries/util/app_error_weak.c
)
target_link_libraries(${target_name}_app_error_handler PRIVATE
    ${target_name}_log_api
    ${target_name}_log_ctrl
    ${target_name}_mdk
    ${target_name}_softdevice
    ${target_name}_strerror
    ${target_name}_util
)

# Component ble_conn_params
add_library(${target_name}_ble_conn_params STATIC
    ${sdk_root}/components/ble/common/ble_conn_params.c
)
target_sources(${target_name}_ble_conn_params
    PUBLIC
    ${sdk_root}/components/ble/common/ble_conn_params.h
)
target_include_directories(${target_name}_ble_conn_params PUBLIC
    ${sdk_root}/components/ble/common
)
target_link_libraries(${target_name}_ble_conn_params PUBLIC
    ${target_name}_softdevice
    ${target_name}_util
)
target_link_libraries(${target_name}_ble_conn_params PRIVATE
    ${target_name}_ble_conn_state
    ${target_name}_mdk
    ${target_name}_softdevice_common
    ${target_name}_timer
)

# Component bsp_api
add_library(${target_name}_bsp_api INTERFACE)
target_sources(${target_name}_bsp_api
    INTERFACE
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

# Component cli_api
add_library(${target_name}_cli_api INTERFACE)
target_sources(${target_name}_cli_api
    INTERFACE
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

# Component drv_clock
add_library(${target_name}_drv_clock STATIC
    ${sdk_root}/integration/nrfx/legacy/nrf_drv_clock.c
)
target_sources(${target_name}_drv_clock
    PUBLIC
    ${sdk_root}/integration/nrfx/legacy/nrf_drv_clock.h
)
target_include_directories(${target_name}_drv_clock PUBLIC
    ${sdk_root}/integration/nrfx/legacy
)
target_link_libraries(${target_name}_drv_clock PUBLIC
    ${target_name}_nrfx_clock
)
target_link_libraries(${target_name}_drv_clock PRIVATE
    ${target_name}_log_api
    ${target_name}_softdevice_common
    ${target_name}_util
)

# Component drv_gpiote
add_library(${target_name}_drv_gpiote INTERFACE)
target_sources(${target_name}_drv_gpiote
    INTERFACE
    ${sdk_root}/integration/nrfx/legacy/nrf_drv_gpiote.h
)
target_include_directories(${target_name}_drv_gpiote INTERFACE
    ${sdk_root}/integration/nrfx/legacy
)
target_link_libraries(${target_name}_drv_gpiote INTERFACE
    ${target_name}_nrfx_gpiote
)

# Component drv_ppi
add_library(${target_name}_drv_ppi STATIC
    ${sdk_root}/integration/nrfx/legacy/nrf_drv_ppi.c
)
target_sources(${target_name}_drv_ppi
    PUBLIC
    ${sdk_root}/integration/nrfx/legacy/nrf_drv_ppi.h
)
target_include_directories(${target_name}_drv_ppi PUBLIC
    ${sdk_root}/integration/nrfx/legacy
)
target_link_libraries(${target_name}_drv_ppi PUBLIC
    ${target_name}_nrfx_ppi
)

# Component drv_qspi
add_library(${target_name}_drv_qspi INTERFACE)
target_sources(${target_name}_drv_qspi
    INTERFACE
    ${sdk_root}/integration/nrfx/legacy/nrf_drv_qspi.h
)
target_include_directories(${target_name}_drv_qspi INTERFACE
    ${sdk_root}/integration/nrfx/legacy
)
target_link_libraries(${target_name}_drv_qspi INTERFACE
    ${target_name}_nrfx_qspi
)

# Component drv_rtc
add_library(${target_name}_drv_rtc INTERFACE)
target_sources(${target_name}_drv_rtc
    INTERFACE
    ${sdk_root}/integration/nrfx/legacy/nrf_drv_rtc.h
)
target_include_directories(${target_name}_drv_rtc INTERFACE
    ${sdk_root}/integration/nrfx/legacy
)
target_link_libraries(${target_name}_drv_rtc INTERFACE
    ${target_name}_nrfx_rtc
)

# Component drv_spi
add_library(${target_name}_drv_spi STATIC
    ${sdk_root}/integration/nrfx/legacy/nrf_drv_spi.c
)
target_sources(${target_name}_drv_spi
    PUBLIC
    ${sdk_root}/integration/nrfx/legacy/nrf_drv_spi.h
)
target_include_directories(${target_name}_drv_spi PUBLIC
    ${sdk_root}/integration/nrfx/legacy
)
target_link_libraries(${target_name}_drv_spi PUBLIC
    ${target_name}_nrfx
    ${target_name}_nrfx_spi
    ${target_name}_nrfx_spim
)

# Component drv_timer
add_library(${target_name}_drv_timer INTERFACE)
target_sources(${target_name}_drv_timer
    INTERFACE
    ${sdk_root}/integration/nrfx/legacy/nrf_drv_timer.h
)
target_include_directories(${target_name}_drv_timer INTERFACE
    ${sdk_root}/integration/nrfx/legacy
)
target_link_libraries(${target_name}_drv_timer INTERFACE
    ${target_name}_nrfx_timer
)

# Component drv_twi
add_library(${target_name}_drv_twi STATIC
    ${sdk_root}/integration/nrfx/legacy/nrf_drv_twi.c
)
target_sources(${target_name}_drv_twi
    PUBLIC
    ${sdk_root}/integration/nrfx/legacy/nrf_drv_twi.h
)
target_include_directories(${target_name}_drv_twi PUBLIC
    ${sdk_root}/integration/nrfx/legacy
)
target_link_libraries(${target_name}_drv_twi PUBLIC
    ${target_name}_nrfx
    ${target_name}_nrfx_twi
    ${target_name}_nrfx_twim
)
target_link_libraries(${target_name}_drv_twi PRIVATE
    ${target_name}_delay
    ${target_name}_hal_gpio
)

# Component drv_uart
add_library(${target_name}_drv_uart STATIC
    ${sdk_root}/integration/nrfx/legacy/nrf_drv_uart.c
)
target_sources(${target_name}_drv_uart
    PUBLIC
    ${sdk_root}/integration/nrfx/legacy/nrf_drv_uart.h
)
target_include_directories(${target_name}_drv_uart PUBLIC
    ${sdk_root}/integration/nrfx/legacy
)
target_link_libraries(${target_name}_drv_uart PUBLIC
    ${target_name}_nrfx
    ${target_name}_nrfx_uart
    ${target_name}_nrfx_uarte
)

# Component fds
add_library(${target_name}_fds STATIC
    ${sdk_root}/components/libraries/fds/fds.c
)
target_sources(${target_name}_fds
    PUBLIC
    ${sdk_root}/components/libraries/fds/fds.h
    ${sdk_root}/components/libraries/fds/fds_internal_defs.h
)
target_include_directories(${target_name}_fds PUBLIC
    ${sdk_root}/components/libraries/fds
)
target_link_libraries(${target_name}_fds PUBLIC
    ${target_name}_config
    ${target_name}_softdevice
    ${target_name}_util
)
target_link_libraries(${target_name}_fds PRIVATE
    ${target_name}_atomic
    ${target_name}_atomic_fifo
    ${target_name}_crc16
    ${target_name}_fstorage
)

# Component hardfault
add_library(${target_name}_hardfault STATIC
    ${sdk_root}/components/libraries/hardfault/hardfault_implementation.c
    ${sdk_root}/components/libraries/hardfault/nrf52/handler/hardfault_handler_gcc.c
)
target_sources(${target_name}_hardfault
    PUBLIC
    ${sdk_root}/components/libraries/hardfault/hardfault.h
    ${sdk_root}/components/libraries/hardfault/hardfault_genhf.h
)
target_include_directories(${target_name}_hardfault PUBLIC
    ${sdk_root}/components/libraries/hardfault
)
target_link_libraries(${target_name}_hardfault PUBLIC
    ${target_name}_mdk
)
target_link_libraries(${target_name}_hardfault PRIVATE
    ${target_name}_log_api
    ${target_name}_log_ctrl
    ${target_name}_softdevice
    ${target_name}_util
)

# Component libuarte
add_library(${target_name}_libuarte STATIC
    ${sdk_root}/components/libraries/experimental_libuarte/nrf_libuarte.c
)
target_sources(${target_name}_libuarte
    PUBLIC
    ${sdk_root}/components/libraries/experimental_libuarte/nrf_libuarte.h
)
target_include_directories(${target_name}_libuarte PUBLIC
    ${sdk_root}/components/libraries/experimental_libuarte
)
target_link_libraries(${target_name}_libuarte PUBLIC
    ${target_name}_hal_uarte
    ${target_name}_nrfx_ppi
    ${target_name}_nrfx_timer
    ${target_name}_util
)
target_link_libraries(${target_name}_libuarte PRIVATE
    ${target_name}_config
    ${target_name}_hal_gpio
    ${target_name}_log_api
)

# Component log_default_backends
add_library(${target_name}_log_default_backends STATIC
    ${sdk_root}/components/libraries/log/src/nrf_log_default_backends.c
)
target_sources(${target_name}_log_default_backends
    PUBLIC
    ${sdk_root}/components/libraries/log/nrf_log_default_backends.h
)
target_include_directories(${target_name}_log_default_backends PUBLIC
    ${sdk_root}/components/libraries/log
)
target_link_libraries(${target_name}_log_default_backends PUBLIC
    ${target_name}_config
    ${target_name}_util
)
target_link_libraries(${target_name}_log_default_backends PRIVATE
    ${target_name}_log_api
    ${target_name}_log_ctrl
)

# Component nrfx_usbd
add_library(${target_name}_nrfx_usbd STATIC
    ${sdk_root}/modules/nrfx/drivers/src/nrfx_usbd.c
)
target_sources(${target_name}_nrfx_usbd
    PUBLIC
    ${sdk_root}/modules/nrfx/drivers/include/nrfx_usbd.h
    PRIVATE
    ${sdk_root}/modules/nrfx/drivers/src/nrfx_usbd_errata.h
)
target_include_directories(${target_name}_nrfx_usbd PUBLIC
    ${sdk_root}/modules/nrfx/drivers/include
)
target_include_directories(${target_name}_nrfx_usbd PRIVATE
    ${sdk_root}/modules/nrfx/drivers/src
)
target_link_libraries(${target_name}_nrfx_usbd PUBLIC
    ${target_name}_hal_usbd
    ${target_name}_nrfx
)
target_link_libraries(${target_name}_nrfx_usbd PRIVATE
    ${target_name}_nrfx_systick
)

# Component pwr_mgmt
add_library(${target_name}_pwr_mgmt STATIC
    ${sdk_root}/components/libraries/pwr_mgmt/nrf_pwr_mgmt.c
)
target_sources(${target_name}_pwr_mgmt
    PUBLIC
    ${sdk_root}/components/libraries/pwr_mgmt/nrf_pwr_mgmt.h
)
target_include_directories(${target_name}_pwr_mgmt PUBLIC
    ${sdk_root}/components/libraries/pwr_mgmt
)
target_link_libraries(${target_name}_pwr_mgmt PUBLIC
    ${target_name}_section_iter
    ${target_name}_util
)
target_link_libraries(${target_name}_pwr_mgmt PRIVATE
    ${target_name}_hal_gpio
    ${target_name}_hal_power
    ${target_name}_log_api
    ${target_name}_log_ctrl
    ${target_name}_mdk
    ${target_name}_mutex
    ${target_name}_scheduler
    ${target_name}_softdevice
    ${target_name}_softdevice_common
    ${target_name}_timer
)

# Component app_uart_blocking
add_library(${target_name}_app_uart_blocking STATIC
    ${sdk_root}/components/libraries/uart/app_uart.c
)
target_link_libraries(${target_name}_app_uart_blocking PRIVATE
    ${target_name}_app_uart_api
    ${target_name}_drv_uart
    ${target_name}_util
)

# Component app_uart_fifo
add_library(${target_name}_app_uart_fifo STATIC
    ${sdk_root}/components/libraries/uart/app_uart_fifo.c
)
target_link_libraries(${target_name}_app_uart_fifo PRIVATE
    ${target_name}_app_uart_api
    ${target_name}_drv_uart
    ${target_name}_fifo
    ${target_name}_util
)

# Component block_dev_qspi
add_library(${target_name}_block_dev_qspi STATIC
    ${sdk_root}/components/libraries/block_dev/qspi/nrf_block_dev_qspi.c
    ${sdk_root}/components/libraries/block_dev/qspi/nrf_serial_flash_params.c
)
target_sources(${target_name}_block_dev_qspi
    PUBLIC
    ${sdk_root}/components/libraries/block_dev/qspi/nrf_block_dev_qspi.h
    ${sdk_root}/components/libraries/block_dev/qspi/nrf_serial_flash_params.h
)
target_include_directories(${target_name}_block_dev_qspi PUBLIC
    ${sdk_root}/components/libraries/block_dev/qspi
)
target_link_libraries(${target_name}_block_dev_qspi PUBLIC
    ${target_name}_block_dev
    ${target_name}_drv_qspi
    ${target_name}_log_api
    ${target_name}_util
)

# Component bsp
add_library(${target_name}_bsp STATIC
    ${sdk_root}/components/libraries/bsp/bsp.c
)
target_sources(${target_name}_bsp
    PRIVATE
    ${sdk_root}/components/libraries/bsp/bsp.c
)
target_include_directories(${target_name}_bsp PRIVATE
    ${sdk_root}/components/libraries/bsp
)
target_link_libraries(${target_name}_bsp PRIVATE
    ${target_name}_boards
    ${target_name}_bsp_api
    ${target_name}_button_api
    ${target_name}_hal_gpio
    ${target_name}_mdk
    ${target_name}_softdevice
    ${target_name}_timer
    ${target_name}_util
)

# Component bsp_btn_ant
add_library(${target_name}_bsp_btn_ant STATIC
    ${sdk_root}/components/libraries/bsp/bsp_btn_ant.c
)
target_sources(${target_name}_bsp_btn_ant
    PUBLIC
    ${sdk_root}/components/libraries/bsp/bsp_btn_ant.h
)
target_include_directories(${target_name}_bsp_btn_ant PUBLIC
    ${sdk_root}/components/libraries/bsp
)
target_link_libraries(${target_name}_bsp_btn_ant PUBLIC
    ${target_name}_util
)
target_link_libraries(${target_name}_bsp_btn_ant PRIVATE
    ${target_name}_bsp_api
    ${target_name}_softdevice_common
)

# Component bsp_btn_ble
add_library(${target_name}_bsp_btn_ble STATIC
    ${sdk_root}/components/libraries/bsp/bsp_btn_ble.c
)
target_sources(${target_name}_bsp_btn_ble
    PUBLIC
    ${sdk_root}/components/libraries/bsp/bsp_btn_ble.h
)
target_include_directories(${target_name}_bsp_btn_ble PUBLIC
    ${sdk_root}/components/libraries/bsp
)
target_link_libraries(${target_name}_bsp_btn_ble PUBLIC
    ${target_name}_bsp_api
    ${target_name}_softdevice
)
target_link_libraries(${target_name}_bsp_btn_ble PRIVATE
    ${target_name}_softdevice_common
)

# Component bsp_cli
add_library(${target_name}_bsp_cli STATIC
    ${sdk_root}/components/libraries/bsp/bsp_cli.c
)
target_sources(${target_name}_bsp_cli
    PUBLIC
    ${sdk_root}/components/libraries/bsp/bsp_cli.h
)
target_include_directories(${target_name}_bsp_cli PUBLIC
    ${sdk_root}/components/libraries/bsp
)
target_link_libraries(${target_name}_bsp_cli PUBLIC
    ${target_name}_bsp_api
    ${target_name}_cli_api
)

# Component bsp_nfc
add_library(${target_name}_bsp_nfc STATIC
    ${sdk_root}/components/libraries/bsp/bsp_nfc.c
)
target_sources(${target_name}_bsp_nfc
    PUBLIC
    ${sdk_root}/components/libraries/bsp/bsp_nfc.h
)
target_include_directories(${target_name}_bsp_nfc PUBLIC
    ${sdk_root}/components/libraries/bsp
)
target_link_libraries(${target_name}_bsp_nfc PUBLIC
    ${target_name}_util
)
target_link_libraries(${target_name}_bsp_nfc PRIVATE
    ${target_name}_bsp_api
    ${target_name}_mdk
)

# Component button
add_library(${target_name}_button STATIC
    ${sdk_root}/components/libraries/button/app_button.c
)
target_link_libraries(${target_name}_button PRIVATE
    ${target_name}_button_api
    ${target_name}_drv_gpiote
    ${target_name}_timer
    ${target_name}_util
)

# Component cli_ble_uart
add_library(${target_name}_cli_ble_uart STATIC
    ${sdk_root}/components/libraries/cli/ble_uart/nrf_cli_ble_uart.c
)
target_sources(${target_name}_cli_ble_uart
    PUBLIC
    ${sdk_root}/components/libraries/cli/ble_uart/nrf_cli_ble_uart.h
)
target_include_directories(${target_name}_cli_ble_uart PUBLIC
    ${sdk_root}/components/libraries/cli/ble_uart
)
target_link_libraries(${target_name}_cli_ble_uart PUBLIC
    ${target_name}_ble_gatt
    ${target_name}_cli_api
    ${target_name}_ringbuf
    ${target_name}_softdevice
    ${target_name}_timer
    ${target_name}_util
)
target_link_libraries(${target_name}_cli_ble_uart PRIVATE
    ${target_name}_log_api
)

# Component cli_rtt
add_library(${target_name}_cli_rtt STATIC
    ${sdk_root}/components/libraries/cli/rtt/nrf_cli_rtt.c
)
target_sources(${target_name}_cli_rtt
    PUBLIC
    ${sdk_root}/components/libraries/cli/rtt/nrf_cli_rtt.h
)
target_include_directories(${target_name}_cli_rtt PUBLIC
    ${sdk_root}/components/libraries/cli/rtt
)
target_link_libraries(${target_name}_cli_rtt PUBLIC
    ${target_name}_cli_api
    ${target_name}_timer
    ${target_name}_util
)
target_link_libraries(${target_name}_cli_rtt PRIVATE
    ${target_name}_delay
    ${target_name}_segger_rtt
)

# Component cli_uart
add_library(${target_name}_cli_uart STATIC
    ${sdk_root}/components/libraries/cli/uart/nrf_cli_uart.c
)
target_sources(${target_name}_cli_uart
    PUBLIC
    ${sdk_root}/components/libraries/cli/uart/nrf_cli_uart.h
)
target_include_directories(${target_name}_cli_uart PUBLIC
    ${sdk_root}/components/libraries/cli/uart
)
target_link_libraries(${target_name}_cli_uart PUBLIC
    ${target_name}_cli_api
    ${target_name}_drv_uart
    ${target_name}_ringbuf
    ${target_name}_timer
)
target_link_libraries(${target_name}_cli_uart PRIVATE
    ${target_name}_log_api
    ${target_name}_util
)

# Component drv_power
add_library(${target_name}_drv_power STATIC
    ${sdk_root}/integration/nrfx/legacy/nrf_drv_power.c
)
target_sources(${target_name}_drv_power
    PUBLIC
    ${sdk_root}/integration/nrfx/legacy/nrf_drv_power.h
)
target_include_directories(${target_name}_drv_power PUBLIC
    ${sdk_root}/integration/nrfx/legacy
)
target_link_libraries(${target_name}_drv_power PUBLIC
    ${target_name}_nrfx_power
)
target_link_libraries(${target_name}_drv_power PRIVATE
    ${target_name}_drv_clock
    ${target_name}_softdevice_common
    ${target_name}_util
)

# Component drv_usbd
add_library(${target_name}_drv_usbd INTERFACE)
target_sources(${target_name}_drv_usbd
    INTERFACE
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

# Component libuarte_async
add_library(${target_name}_libuarte_async STATIC
    ${sdk_root}/components/libraries/experimental_libuarte/nrf_libuarte_async.c
)
target_sources(${target_name}_libuarte_async
    PUBLIC
    ${sdk_root}/components/libraries/experimental_libuarte/nrf_libuarte_async.h
)
target_include_directories(${target_name}_libuarte_async PUBLIC
    ${sdk_root}/components/libraries/experimental_libuarte
)
target_link_libraries(${target_name}_libuarte_async PUBLIC
    ${target_name}_balloc
    ${target_name}_hal_uarte
    ${target_name}_libuarte
    ${target_name}_nrfx_ppi
    ${target_name}_nrfx_rtc
    ${target_name}_nrfx_timer
    ${target_name}_queue
    ${target_name}_util
)
target_link_libraries(${target_name}_libuarte_async PRIVATE
    ${target_name}_config
    ${target_name}_hal_uart
    ${target_name}_log_api
    ${target_name}_nrfx_clock
)

# Component log
add_library(${target_name}_log STATIC
    ${sdk_root}/components/libraries/log/src/nrf_log_frontend.c
    ${sdk_root}/components/libraries/log/src/nrf_log_str_formatter.c
)
target_sources(${target_name}_log
    PUBLIC
    ${sdk_root}/components/libraries/log/nrf_log_str_formatter.h
)
target_include_directories(${target_name}_log PUBLIC
    ${sdk_root}/components/libraries/log
)
target_link_libraries(${target_name}_log PUBLIC
    ${target_name}_fprintf
    ${target_name}_log_ctrl
)
target_link_libraries(${target_name}_log PRIVATE
    ${target_name}_atomic
    ${target_name}_cli_api
    ${target_name}_log_api
    ${target_name}_memobj
    ${target_name}_ringbuf
    ${target_name}_section_vars
    ${target_name}_util
)

# Component sdcard
add_library(${target_name}_sdcard STATIC
    ${sdk_root}/components/libraries/sdcard/app_sdcard.c
)
target_sources(${target_name}_sdcard
    PUBLIC
    ${sdk_root}/components/libraries/sdcard/app_sdcard.h
)
target_include_directories(${target_name}_sdcard PUBLIC
    ${sdk_root}/components/libraries/sdcard
)
target_link_libraries(${target_name}_sdcard PUBLIC
    ${target_name}_config
    ${target_name}_util
)
target_link_libraries(${target_name}_sdcard PRIVATE
    ${target_name}_drv_spi
    ${target_name}_hal_gpio
    ${target_name}_protothreads
)

# Component twi_mngr
add_library(${target_name}_twi_mngr STATIC
    ${sdk_root}/components/libraries/twi_mngr/nrf_twi_mngr.c
)
target_sources(${target_name}_twi_mngr
    PUBLIC
    ${sdk_root}/components/libraries/twi_mngr/nrf_twi_mngr.h
)
target_include_directories(${target_name}_twi_mngr PUBLIC
    ${sdk_root}/components/libraries/twi_mngr
)
target_link_libraries(${target_name}_twi_mngr PUBLIC
    ${target_name}_drv_twi
    ${target_name}_queue
    ${target_name}_util
)

# Component block_dev_sdc
add_library(${target_name}_block_dev_sdc STATIC
    ${sdk_root}/components/libraries/block_dev/sdc/nrf_block_dev_sdc.c
)
target_sources(${target_name}_block_dev_sdc
    PUBLIC
    ${sdk_root}/components/libraries/block_dev/sdc/nrf_block_dev_sdc.h
)
target_include_directories(${target_name}_block_dev_sdc PUBLIC
    ${sdk_root}/components/libraries/block_dev/sdc
)
target_link_libraries(${target_name}_block_dev_sdc PUBLIC
    ${target_name}_block_dev
    ${target_name}_sdcard
)

# Component cli
add_library(${target_name}_cli STATIC
    ${sdk_root}/components/libraries/cli/cli_utils_cmds.c
    ${sdk_root}/components/libraries/cli/nrf_cli.c
)
target_sources(${target_name}_cli
    PUBLIC
    ${sdk_root}/components/libraries/cli/nrf_cli_vt100.h
)
target_include_directories(${target_name}_cli PUBLIC
    ${sdk_root}/components/libraries/cli
)
target_link_libraries(${target_name}_cli PRIVATE
    ${target_name}_atomic
    ${target_name}_cli_api
    ${target_name}_delay
    ${target_name}_fnmatch
    ${target_name}_log
    ${target_name}_log_api
    ${target_name}_pwr_mgmt
    ${target_name}_util
)

# Component cli_libuarte
add_library(${target_name}_cli_libuarte STATIC
    ${sdk_root}/components/libraries/cli/libuarte/nrf_cli_libuarte.c
)
target_sources(${target_name}_cli_libuarte
    PUBLIC
    ${sdk_root}/components/libraries/cli/libuarte/nrf_cli_libuarte.h
)
target_include_directories(${target_name}_cli_libuarte PUBLIC
    ${sdk_root}/components/libraries/cli/libuarte
)
target_link_libraries(${target_name}_cli_libuarte PUBLIC
    ${target_name}_cli_api
    ${target_name}_libuarte
    ${target_name}_ringbuf
    ${target_name}_timer
)
target_link_libraries(${target_name}_cli_libuarte PRIVATE
    ${target_name}_libuarte_async
    ${target_name}_log_api
    ${target_name}_util
)

# Component log_backend_flash
add_library(${target_name}_log_backend_flash STATIC
    ${sdk_root}/components/libraries/log/src/nrf_log_backend_flash.c
)
target_sources(${target_name}_log_backend_flash
    PUBLIC
    ${sdk_root}/components/libraries/log/nrf_log_backend_flash.h
)
target_include_directories(${target_name}_log_backend_flash PUBLIC
    ${sdk_root}/components/libraries/log
)
target_link_libraries(${target_name}_log_backend_flash PUBLIC
    ${target_name}_fstorage
    ${target_name}_log_api
    ${target_name}_log_ctrl
)
target_link_libraries(${target_name}_log_backend_flash PRIVATE
    ${target_name}_atomic
    ${target_name}_cli_api
    ${target_name}_delay
    ${target_name}_log
    ${target_name}_queue
    ${target_name}_util
)

# Component log_backend_serial
add_library(${target_name}_log_backend_serial STATIC
    ${sdk_root}/components/libraries/log/src/nrf_log_backend_serial.c
)
target_sources(${target_name}_log_backend_serial
    PUBLIC
    ${sdk_root}/components/libraries/log/src/nrf_log_backend_serial.h
)
target_include_directories(${target_name}_log_backend_serial PUBLIC
    ${sdk_root}/components/libraries/log/src
)
target_link_libraries(${target_name}_log_backend_serial PUBLIC
    ${target_name}_fprintf
    ${target_name}_log_ctrl
)
target_link_libraries(${target_name}_log_backend_serial PRIVATE
    ${target_name}_log
    ${target_name}_log_api
    ${target_name}_util
)

# Component usbd_core
add_library(${target_name}_usbd_core STATIC
    ${sdk_root}/components/libraries/usbd/app_usbd.c
    ${sdk_root}/components/libraries/usbd/app_usbd_core.c
    ${sdk_root}/components/libraries/usbd/app_usbd_serial_num.c
    ${sdk_root}/components/libraries/usbd/app_usbd_string_desc.c
)
target_sources(${target_name}_usbd_core
    PUBLIC
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
target_include_directories(${target_name}_usbd_core PUBLIC
    ${sdk_root}/components/libraries/usbd
)
target_link_libraries(${target_name}_usbd_core PUBLIC
    ${target_name}_drv_usbd
    ${target_name}_mdk
    ${target_name}_util
)
target_link_libraries(${target_name}_usbd_core PRIVATE
    ${target_name}_atomic
    ${target_name}_atomic_fifo
    ${target_name}_config
    ${target_name}_drv_clock
    ${target_name}_drv_power
    ${target_name}_hal_power
    ${target_name}_log_api
    ${target_name}_utf_converter
)

# Component log_backend_rtt
add_library(${target_name}_log_backend_rtt STATIC
    ${sdk_root}/components/libraries/log/src/nrf_log_backend_rtt.c
)
target_sources(${target_name}_log_backend_rtt
    PUBLIC
    ${sdk_root}/components/libraries/log/nrf_log_backend_rtt.h
)
target_include_directories(${target_name}_log_backend_rtt PUBLIC
    ${sdk_root}/components/libraries/log
)
target_link_libraries(${target_name}_log_backend_rtt PUBLIC
    ${target_name}_log_ctrl
)
target_link_libraries(${target_name}_log_backend_rtt PRIVATE
    ${target_name}_delay
    ${target_name}_log
    ${target_name}_log_api
    ${target_name}_log_backend_serial
    ${target_name}_segger_rtt
    ${target_name}_util
)

# Component log_backend_uart
add_library(${target_name}_log_backend_uart STATIC
    ${sdk_root}/components/libraries/log/src/nrf_log_backend_uart.c
)
target_sources(${target_name}_log_backend_uart
    PUBLIC
    ${sdk_root}/components/libraries/log/nrf_log_backend_uart.h
)
target_include_directories(${target_name}_log_backend_uart PUBLIC
    ${sdk_root}/components/libraries/log
)
target_link_libraries(${target_name}_log_backend_uart PUBLIC
    ${target_name}_log_ctrl
)
target_link_libraries(${target_name}_log_backend_uart PRIVATE
    ${target_name}_drv_uart
    ${target_name}_log_api
    ${target_name}_log_backend_serial
    ${target_name}_util
)

# Component usbd_class_cdc
add_library(${target_name}_usbd_class_cdc INTERFACE)
target_sources(${target_name}_usbd_class_cdc
    INTERFACE
    ${sdk_root}/components/libraries/usbd/class/cdc/app_usbd_cdc_desc.h
    ${sdk_root}/components/libraries/usbd/class/cdc/app_usbd_cdc_types.h
)
target_include_directories(${target_name}_usbd_class_cdc INTERFACE
    ${sdk_root}/components/libraries/usbd/class/cdc
)
target_link_libraries(${target_name}_usbd_class_cdc INTERFACE
    ${target_name}_usbd_core
)

# Component usbd_class_msc
add_library(${target_name}_usbd_class_msc STATIC
    ${sdk_root}/components/libraries/usbd/class/msc/app_usbd_msc.c
)
target_sources(${target_name}_usbd_class_msc
    PUBLIC
    ${sdk_root}/components/libraries/usbd/class/msc/app_usbd_msc.h
    ${sdk_root}/components/libraries/usbd/class/msc/app_usbd_msc_desc.h
    ${sdk_root}/components/libraries/usbd/class/msc/app_usbd_msc_internal.h
    ${sdk_root}/components/libraries/usbd/class/msc/app_usbd_msc_scsi.h
    ${sdk_root}/components/libraries/usbd/class/msc/app_usbd_msc_types.h
)
target_include_directories(${target_name}_usbd_class_msc PUBLIC
    ${sdk_root}/components/libraries/usbd/class/msc
)
target_link_libraries(${target_name}_usbd_class_msc PUBLIC
    ${target_name}_block_dev
    ${target_name}_drv_usbd
    ${target_name}_usbd_core
    ${target_name}_util
)
target_link_libraries(${target_name}_usbd_class_msc PRIVATE
    ${target_name}_log_api
)

# Component usbd_class_cdc_acm
add_library(${target_name}_usbd_class_cdc_acm STATIC
    ${sdk_root}/components/libraries/usbd/class/cdc/acm/app_usbd_cdc_acm.c
)
target_sources(${target_name}_usbd_class_cdc_acm
    PUBLIC
    ${sdk_root}/components/libraries/usbd/class/cdc/acm/app_usbd_cdc_acm.h
    ${sdk_root}/components/libraries/usbd/class/cdc/acm/app_usbd_cdc_acm_internal.h
)
target_include_directories(${target_name}_usbd_class_cdc_acm PUBLIC
    ${sdk_root}/components/libraries/usbd/class/cdc/acm
)
target_link_libraries(${target_name}_usbd_class_cdc_acm PUBLIC
    ${target_name}_drv_usbd
    ${target_name}_usbd_class_cdc
    ${target_name}_usbd_core
    ${target_name}_util
)
target_link_libraries(${target_name}_usbd_class_cdc_acm PRIVATE
    ${target_name}_log_api
)

# Component cli_cdc_acm
add_library(${target_name}_cli_cdc_acm STATIC
    ${sdk_root}/components/libraries/cli/cdc_acm/nrf_cli_cdc_acm.c
)
target_sources(${target_name}_cli_cdc_acm
    PUBLIC
    ${sdk_root}/components/libraries/cli/cdc_acm/nrf_cli_cdc_acm.h
)
target_include_directories(${target_name}_cli_cdc_acm PUBLIC
    ${sdk_root}/components/libraries/cli/cdc_acm
)
target_link_libraries(${target_name}_cli_cdc_acm PUBLIC
    ${target_name}_cli_api
    ${target_name}_usbd_class_cdc_acm
)
target_link_libraries(${target_name}_cli_cdc_acm PRIVATE
    ${target_name}_queue
    ${target_name}_util
)

endfunction()
    