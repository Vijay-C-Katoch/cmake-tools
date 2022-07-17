set(Variant "STM32L4xx")
set(Board_Variant "L475R\(C-E-G\)T_L476R\(C-E-G\)T_L486RGT")

add_library(stm32duino STATIC)

target_compile_options(stm32duino PUBLIC
-DUSE_FULL_LL_DRIVER
-DRELEASE
-DSTM32L4xx
-DSTM32L476xx
-DARDUINO_NUCLEO_L476RG
-DARDUINO_ARCH_STM32
"-DBOARD_NAME=\"NUCLEO_L476RG\"" 
"-DVARIANT_H=\"variant_NUCLEO_L476RG.h\"" 
-DUSBCON 
-DUSBD_VID=0 
-DUSBD_PID=0 
-DHAL_PCD_MODULE_ENABLED 
-DUSBD_USE_CDC 
-DHAL_UART_MODULE_ENABLED
-fdata-sections
-ffunction-sections
)

# include directories from stm32duino repo
target_include_directories(stm32duino PUBLIC
$<BUILD_INTERFACE:${HARDWARE_DIR}/boards/stm32/NUCLEO-L476RG/Inc>

${TP_DIR}/stm32duino/Arduino_Core_STM32/variants/${Variant}/${Board_Variant}
${TP_DIR}/stm32duino/Arduino_Core_STM32/system/STM32L4xx

${TP_DIR}/stm32duino/Arduino_Core_STM32/system/Drivers/CMSIS/Device/ST/STM32L4xx/Include

${TP_DIR}/stm32duino/Arduino_Core_STM32/cores/arduino
${TP_DIR}/stm32duino/Arduino_Core_STM32/cores/arduino/avr
${TP_DIR}/stm32duino/Arduino_Core_STM32/cores/arduino/stm32
${TP_DIR}/stm32duino/Arduino_Core_STM32/cores/arduino/stm32/LL
${TP_DIR}/stm32duino/Arduino_Core_STM32/cores/arduino/stm32/usb
${TP_DIR}/stm32duino/Arduino_Core_STM32/cores/arduino/stm32/usb/hid 
${TP_DIR}/stm32duino/Arduino_Core_STM32/cores/arduino/stm32/usb/cdc
${TP_DIR}/stm32duino/Arduino_Core_STM32/cores/arduino/stm32/OpenAMP

${TP_DIR}/stm32duino/Arduino_Core_STM32/system/Drivers/STM32L4xx_HAL_Driver/Inc
${TP_DIR}/stm32duino/Arduino_Core_STM32/system/Drivers/STM32L4xx_HAL_Driver/Src


${TP_DIR}/stm32duino/Arduino_Core_STM32/system/Middlewares/ST/STM32_USB_Device_Library/Core/Inc 
${TP_DIR}/stm32duino/Arduino_Core_STM32/system/Middlewares/ST/STM32_USB_Device_Library/Core/Src
${TP_DIR}/stm32duino/Arduino_Core_STM32/system/Middlewares/OpenAMP
${TP_DIR}/stm32duino/Arduino_Core_STM32/system/Middlewares/OpenAMP/open-amp/lib/include
${TP_DIR}/stm32duino/Arduino_Core_STM32/system/Middlewares/OpenAMP/libmetal/lib/include
${TP_DIR}/stm32duino/Arduino_Core_STM32/system/Middlewares/OpenAMP/virtual_driver

${TP_DIR}/stm32duino/Arduino_Core_STM32/libraries/SrcWrapper/src


# ${TP_DIR}/stm32duino/Arduino_Core_STM32/libraries/SrcWrapper/src
# ${TP_DIR}/stm32duino/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL
# ${TP_DIR}/stm32duino/Arduino_Core_STM32/libraries/SrcWrapper/src/LL
# ${TP_DIR}/stm32duino/Arduino_Core_STM32/libraries/SrcWrapper/src/stm32

# ${TP_DIR}/stm32duino/Arduino_Core_STM32/system/Drivers/CMSIS/Device/ST/STM32L4xx/Include


#STM32 cube includes
${TP_DIR}/ARM/CMSIS_5/CMSIS/Core/Include
${TP_DIR}/stm32duino/Arduino_Core_STM32/system/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc
#${TP_DIR}/STM32CubeL4/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/gcc
# ${TP_DIR}/STM32CubeL4/Drivers/STM32L4xx_HAL_Driver/Src
# ${HARDWARE_DIR}/boards/stm32/NUCLEO-L476RG/Src
)


file(GLOB_RECURSE SOURCE_FILES CONFIGURE_DEPENDS 
"${TP_DIR}/stm32duino/Arduino_Core_STM32/cores/arduino/stm32/startup_stm32yyxx.S"
"${TP_DIR}/stm32duino/Arduino_Core_STM32/cores/arduino/*.c"
"${TP_DIR}/stm32duino/Arduino_Core_STM32/cores/arduino/*.cpp"
"${TP_DIR}/stm32duino/Arduino_Core_STM32/libraries/SrcWrapper/*.c"
"${TP_DIR}/stm32duino/Arduino_Core_STM32/libraries/SrcWrapper/*.cpp"
"${TP_DIR}/stm32duino/Arduino_Core_STM32/variants/${Variant}/${Board_Variant}/*.c"
"${TP_DIR}/stm32duino/Arduino_Core_STM32/variants/${Variant}/${Board_Variant}/*.cpp"
)

target_sources(stm32duino PUBLIC 
${SOURCE_FILES} 

${HARDWARE_DIR}/boards/stm32/NUCLEO-L476RG/Src/board_init.c
)
