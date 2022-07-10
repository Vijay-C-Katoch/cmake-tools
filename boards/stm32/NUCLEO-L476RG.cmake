
add_library(cubeL4 STATIC)

target_compile_options(cubeL4 PUBLIC
-DDEBUG
-DUSE_HAL_DRIVER
-DSTM32L476xx
-fdata-sections
-ffunction-sections
)

target_include_directories(cubeL4 PUBLIC
$<BUILD_INTERFACE:${HARDWARE_DIR}/boards/stm32/NUCLEO-L476RG/Inc>
$<INSTALL_INTERFACE:bsp/Inc>

${STM32_DIR}/Drivers/CMSIS/Device/ST/STM32L4xx/Include
${STM32_DIR}/Drivers/CMSIS/Include
${STM32_DIR}/Drivers/STM32L4xx_HAL_Driver/Inc

${STM32_DIR}/Middlewares/Third_Party/FatFs/src
)

target_sources(cubeL4 PUBLIC
${HARDWARE_DIR}/boards/stm32/NUCLEO-L476RG/Src/board_init.c
${HARDWARE_DIR}/boards/stm32/NUCLEO-L476RG/Src/fatfs.c
${HARDWARE_DIR}/boards/stm32/NUCLEO-L476RG/Src/gpio.c
${HARDWARE_DIR}/boards/stm32/NUCLEO-L476RG/Src/startup_stm32l476rgtx.s
${HARDWARE_DIR}/boards/stm32/NUCLEO-L476RG/Src/stm32l4xx_hal_msp.c
${HARDWARE_DIR}/boards/stm32/NUCLEO-L476RG/Src/stm32l4xx_it.c
${HARDWARE_DIR}/boards/stm32/NUCLEO-L476RG/Src/syscalls.c
${HARDWARE_DIR}/boards/stm32/NUCLEO-L476RG/Src/sysmem.c
${HARDWARE_DIR}/boards/stm32/NUCLEO-L476RG/Src/system_stm32l4xx.c
${HARDWARE_DIR}/boards/stm32/NUCLEO-L476RG/Src/usart.c
${HARDWARE_DIR}/boards/stm32/NUCLEO-L476RG/Src/user_diskio.c

${STM32_DIR}/Middlewares/Third_Party/FatFs/src/diskio.c
${STM32_DIR}/Middlewares/Third_Party/FatFs/src/ff.c
${STM32_DIR}/Middlewares/Third_Party/FatFs/src/ff_gen_drv.c
${STM32_DIR}/Middlewares/Third_Party/FatFs/src/ff_gen_drv.c
${STM32_DIR}/Middlewares/Third_Party/FatFs/src/option/syscall.c

${STM32_DIR}/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_cortex.c
${STM32_DIR}/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_dma_ex.c
${STM32_DIR}/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_dma.c
${STM32_DIR}/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_exti.c
${STM32_DIR}/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_flash_ex.c
${STM32_DIR}/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_flash_ramfunc.c
${STM32_DIR}/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_flash.c
${STM32_DIR}/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_gpio.c
${STM32_DIR}/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_i2c_ex.c
${STM32_DIR}/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_i2c.c
${STM32_DIR}/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_pwr_ex.c
${STM32_DIR}/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_rcc.c
${STM32_DIR}/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_rcc_ex.c
${STM32_DIR}/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_sd.c
${STM32_DIR}/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_tim.c
${STM32_DIR}/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_tim_ex.c
${STM32_DIR}/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_uart_ex.c
${STM32_DIR}/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_uart.c
${STM32_DIR}/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal.c
${STM32_DIR}/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_ll_sdmmc.c
)
