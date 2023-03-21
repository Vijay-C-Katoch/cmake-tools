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
-DSTM32H735xx
-DF_CPU=550000000L
-fdata-sections
-ffunction-sections
)

# include directories from STM32CubeH7 MCU Firmware repo
target_include_directories(framework-stm32cubeh7 PUBLIC

${TP_DIR}/framework-stm32cubeh7/Drivers/CMSIS/Include
${TP_DIR}/framework-stm32cubeh7/Drivers/CMSIS/Device/ST/STM32H7xx/Include
${TP_DIR}/framework-stm32cubeh7/Drivers/STM32H7xx_HAL_Driver/Inc
${TP_DIR}/framework-stm32cubeh7/Drivers/STM32H7xx_HAL_Driver/Src
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

"${TP_DIR}/framework-stm32cubeh7/Drivers/STM32H7xx_HAL_Driver/Src/*.c"

"${TP_DIR}/framework-stm32cubeh7/Drivers/BSP/Components/s70kl1281/*.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/BSP/Components/rk070er9427/*.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/BSP/Components/st7735/*.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/BSP/Components/ts3510/*.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/BSP/Components/Common/*.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/BSP/Components/lan8742/*.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/BSP/Components/ampire480272/*.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/BSP/Components/m24lr64/*.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/BSP/Components/ft6x06/*.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/BSP/Components/is42s32800g/*.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/BSP/Components/mt48lc4m32b2/*.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/BSP/Components/is42s16800j/*.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/BSP/Components/ampire640480/*.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/BSP/Components/ov5640/*.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/BSP/Components/cs42l51/*.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/BSP/Components/otm8009a/*.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/BSP/Components/es_wifi/*.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/BSP/Components/mfxstm32l152/*.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/BSP/Components/mx25lm51245g/*.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/BSP/Components/mx_wifi/*.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/BSP/Components/mt25tl01g/*.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/BSP/Components/rk043fn48h/*.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/BSP/Components/s5k5cag/*.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/BSP/Components/adv7533/*.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/BSP/Components/ft5336/*.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/BSP/Components/is42s32800j/*.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/BSP/Components/stmpe811/*.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/BSP/Components/ov9655/*.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/BSP/Components/wm8994/*.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/BSP/Components/exc7200/*.c"
"${TP_DIR}/framework-stm32cubeh7/Drivers/BSP/Adafruit_Shield/*.c"

"${TP_DIR}/framework-stm32cubeh7/Middlewares/ST/STM32_USB_Device_Library/Class/*/Src/*.c"

"${TP_DIR}/framework-stm32cubeh7/Utilities/Common/*.c"
"${TP_DIR}/framework-stm32cubeh7/Utilities/JPEG/*.c"
"${TP_DIR}/framework-stm32cubeh7/Utilities/Fonts/*.c"
"${TP_DIR}/framework-stm32cubeh7/Utilities/lcd/*.c"
"${TP_DIR}/framework-stm32cubeh7/Utilities/Lcd_Trace/*.c"
"${TP_DIR}/framework-stm32cubeh7/Utilities/CPU/*.c"
"${TP_DIR}/framework-stm32cubeh7/Utilities/ResourcesManager/*.c"
)

target_sources(stm32duino PUBLIC 
${SOURCE_FILES} 
${HARDWARE_DIR}/boards/stm32/NUCLEO-L476RG/Src/clock_config.c
)
