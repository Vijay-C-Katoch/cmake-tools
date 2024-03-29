#[=======================================================================[.rst:
STM32H750B-DK discovery board static library creation
----------------------------------------------------

This cmake script is for building and creating static library from
STM32CubeH7 MCU Firmware Package source for STM32H750B-DK discovery 
board from ST Microelectronics.

#]=======================================================================]

add_library(framework-stm32cubeh7 STATIC)

target_compile_options(framework-stm32cubeh7 PUBLIC
-DDEBUG
-DUSE_HAL_DRIVER
-DSTM32H7xx
-DSTM32H750xx
-DF_CPU=550000000L
-fdata-sections
-ffunction-sections
)

# include directories from STM32CubeH7 MCU Firmware repo
target_include_directories(framework-stm32cubeh7 PUBLIC

${HARDWARE_DIR}/boards/stm32/STM32H750B-DK/Inc

${TP_DIR}/framework-stm32cubeh7/Drivers/STM32H7xx_HAL_Driver/Inc
${TP_DIR}/framework-stm32cubeh7/Drivers/STM32H7xx_HAL_Driver/Inc/Legacy
${TP_DIR}/framework-stm32cubeh7/Drivers/STM32H7xx_HAL_Driver/Src

${TP_DIR}/framework-stm32cubeh7/Drivers/CMSIS/Include
${TP_DIR}/framework-stm32cubeh7/Drivers/CMSIS/Device/ST/STM32H7xx/Include
${TP_DIR}/framework-stm32cubeh7/Drivers/CMSIS/DSP/Include

${TP_DIR}/framework-stm32cubeh7/Drivers/BSP/Components/s70kl1281
${TP_DIR}/framework-stm32cubeh7/Drivers/BSP/Components/rk070er9427
${TP_DIR}/framework-stm32cubeh7/Drivers/BSP/Components/st7735
${TP_DIR}/framework-stm32cubeh7/Drivers/BSP/Components/ts3510
${TP_DIR}/framework-stm32cubeh7/Drivers/BSP/Components/Common
${TP_DIR}/framework-stm32cubeh7/Drivers/BSP/Components/lan8742
${TP_DIR}/framework-stm32cubeh7/Drivers/BSP/Components/ampire480272
${TP_DIR}/framework-stm32cubeh7/Drivers/BSP/Components/m24lr64
${TP_DIR}/framework-stm32cubeh7/Drivers/BSP/Components/ft6x06
${TP_DIR}/framework-stm32cubeh7/Drivers/BSP/Components/is42s32800g
${TP_DIR}/framework-stm32cubeh7/Drivers/BSP/Components/mt48lc4m32b2
${TP_DIR}/framework-stm32cubeh7/Drivers/BSP/Components/is42s16800j
${TP_DIR}/framework-stm32cubeh7/Drivers/BSP/Components/ampire640480
${TP_DIR}/framework-stm32cubeh7/Drivers/BSP/Components/ov5640
${TP_DIR}/framework-stm32cubeh7/Drivers/BSP/Components/cs42l51
${TP_DIR}/framework-stm32cubeh7/Drivers/BSP/Components/otm8009a
${TP_DIR}/framework-stm32cubeh7/Drivers/BSP/Components/es_wifi
${TP_DIR}/framework-stm32cubeh7/Drivers/BSP/Components/mfxstm32l152
${TP_DIR}/framework-stm32cubeh7/Drivers/BSP/Components/mx25lm51245g
${TP_DIR}/framework-stm32cubeh7/Drivers/BSP/Components/mx_wifi
${TP_DIR}/framework-stm32cubeh7/Drivers/BSP/Components/mt25tl01g
${TP_DIR}/framework-stm32cubeh7/Drivers/BSP/Components/rk043fn48h
${TP_DIR}/framework-stm32cubeh7/Drivers/BSP/Components/s5k5cag
${TP_DIR}/framework-stm32cubeh7/Drivers/BSP/Components/adv7533
${TP_DIR}/framework-stm32cubeh7/Drivers/BSP/Components/ft5336
${TP_DIR}/framework-stm32cubeh7/Drivers/BSP/Components/is42s32800j
${TP_DIR}/framework-stm32cubeh7/Drivers/BSP/Components/stmpe811
${TP_DIR}/framework-stm32cubeh7/Drivers/BSP/Components/ov9655
${TP_DIR}/framework-stm32cubeh7/Drivers/BSP/Components/wm8994
${TP_DIR}/framework-stm32cubeh7/Drivers/BSP/Components/exc7200
${TP_DIR}/framework-stm32cubeh7/Drivers/BSP/Adafruit_Shield

${TP_DIR}/framework-stm32cubeh7/Utilities/Common
${TP_DIR}/framework-stm32cubeh7/Utilities/JPEG
${TP_DIR}/framework-stm32cubeh7/Utilities/Fonts
${TP_DIR}/framework-stm32cubeh7/Utilities/lcd
${TP_DIR}/framework-stm32cubeh7/Utilities/Lcd_Trace
${TP_DIR}/framework-stm32cubeh7/Utilities/CPU
${TP_DIR}/framework-stm32cubeh7/Utilities/ResourcesManager

${TP_DIR}/framework-stm32cubeh7/Middlewares/ST/STM32_USB_Device_Library/Core/Inc
${TP_DIR}/framework-stm32cubeh7/Middlewares/ST/STM32_USB_Device_Library/Core/Src
${TP_DIR}/framework-stm32cubeh7/Middlewares/ST/STM32_USB_Device_Library/Class/HID/Inc
${TP_DIR}/framework-stm32cubeh7/Middlewares/ST/STM32_USB_Device_Library/Class/HID/Src
${TP_DIR}/framework-stm32cubeh7/Middlewares/ST/STM32_USB_Device_Library/Class/VIDEO/Inc
${TP_DIR}/framework-stm32cubeh7/Middlewares/ST/STM32_USB_Device_Library/Class/VIDEO/Src
${TP_DIR}/framework-stm32cubeh7/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc
${TP_DIR}/framework-stm32cubeh7/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Src
${TP_DIR}/framework-stm32cubeh7/Middlewares/ST/STM32_USB_Device_Library/Class/CustomHID/Inc
${TP_DIR}/framework-stm32cubeh7/Middlewares/ST/STM32_USB_Device_Library/Class/CustomHID/Src
${TP_DIR}/framework-stm32cubeh7/Middlewares/ST/STM32_USB_Device_Library/Class/CDC_ECM/Inc
${TP_DIR}/framework-stm32cubeh7/Middlewares/ST/STM32_USB_Device_Library/Class/CDC_ECM/Src
${TP_DIR}/framework-stm32cubeh7/Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Inc
${TP_DIR}/framework-stm32cubeh7/Middlewares/ST/STM32_USB_Device_Library/Class/AUDIO/Src
${TP_DIR}/framework-stm32cubeh7/Middlewares/ST/STM32_USB_Device_Library/Class/MSC/Inc
${TP_DIR}/framework-stm32cubeh7/Middlewares/ST/STM32_USB_Device_Library/Class/MSC/Src
${TP_DIR}/framework-stm32cubeh7/Middlewares/ST/STM32_USB_Device_Library/Class/DFU/Inc
${TP_DIR}/framework-stm32cubeh7/Middlewares/ST/STM32_USB_Device_Library/Class/DFU/Src
${TP_DIR}/framework-stm32cubeh7/Middlewares/ST/STM32_USB_Device_Library/Class/BillBoard/Inc
${TP_DIR}/framework-stm32cubeh7/Middlewares/ST/STM32_USB_Device_Library/Class/BillBoard/Src
${TP_DIR}/framework-stm32cubeh7/Middlewares/ST/STM32_USB_Device_Library/Class/CDC_RNDIS/Inc
${TP_DIR}/framework-stm32cubeh7/Middlewares/ST/STM32_USB_Device_Library/Class/CDC_RNDIS/Src
${TP_DIR}/framework-stm32cubeh7/Middlewares/ST/STM32_USB_Host_Library/Core/Inc
${TP_DIR}/framework-stm32cubeh7/Middlewares/ST/STM32_USB_Host_Library/Core/Src
${TP_DIR}/framework-stm32cubeh7/Middlewares/ST/STM32_USB_Host_Library/Class/HID/Inc
${TP_DIR}/framework-stm32cubeh7/Middlewares/ST/STM32_USB_Host_Library/Class/HID/Src
${TP_DIR}/framework-stm32cubeh7/Middlewares/ST/STM32_USB_Host_Library/Class/CDC/Inc
${TP_DIR}/framework-stm32cubeh7/Middlewares/ST/STM32_USB_Host_Library/Class/CDC/Src
${TP_DIR}/framework-stm32cubeh7/Middlewares/ST/STM32_USB_Host_Library/Class/AUDIO/Inc
${TP_DIR}/framework-stm32cubeh7/Middlewares/ST/STM32_USB_Host_Library/Class/AUDIO/Src
${TP_DIR}/framework-stm32cubeh7/Middlewares/ST/STM32_USB_Host_Library/Class/MSC/Inc
${TP_DIR}/framework-stm32cubeh7/Middlewares/ST/STM32_USB_Host_Library/Class/MSC/Src
${TP_DIR}/framework-stm32cubeh7/Middlewares/ST/STM32_USB_Host_Library/Class/MTP/Inc
${TP_DIR}/framework-stm32cubeh7/Middlewares/ST/STM32_USB_Host_Library/Class/MTP/Src
)

file(GLOB_RECURSE SOURCE_FILES CONFIGURE_DEPENDS 
"${HARDWARE_DIR}/boards/stm32/STM32H750B-DK/Startup/startup_stm32h750xbhx.s"

"${TP_DIR}/framework-stm32cubeh7/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_adc.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_adc_ex.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_cortex.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_dac.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_dac_ex.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_dma.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_dma_ex.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_eth.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_eth_ex.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_exti.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_fdcan.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_flash.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_flash_ex.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_gpio.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_hsem.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_i2c.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_i2c_ex.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_ltdc.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_ltdc_ex.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_mdma.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_pcd_ex.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_pcd.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_pwr.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_pwr_ex.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_qspi.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_rcc.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_rcc_ex.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_sai.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_sai_ex.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_sd.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_sd_ex.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_sdram.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_spi_ex.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_spi.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_tim.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_tim_ex.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_uart.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_hal_uart_ex.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_ll_delayblock.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_ll_fmc.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_ll_sdmmc.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/STM32H7xx_HAL_Driver/Src/stm32h7xx_ll_usb.c"

"${HARDWARE_DIR}/boards/stm32/STM32H750B-DK/Src/stm32h7xx_hal_msp.c"
"${HARDWARE_DIR}/boards/stm32/STM32H750B-DK/Src/stm32h7xx_hal_timebase_tim.c"
"${HARDWARE_DIR}/boards/stm32/STM32H750B-DK/Src/stm32h7xx_it.c"
"${HARDWARE_DIR}/boards/stm32/STM32H750B-DK/Src/syscalls.c"
"${HARDWARE_DIR}/boards/stm32/STM32H750B-DK/Src/sysmem.c"
"${HARDWARE_DIR}/boards/stm32/STM32H750B-DK/Src/system_stm32h7xx.c"
)

target_sources(framework-stm32cubeh7 PUBLIC 
${SOURCE_FILES} 
)
