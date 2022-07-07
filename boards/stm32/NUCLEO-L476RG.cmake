
target_compile_options(cubeL4 PUBLIC
-DUSE_HAL_DRIVER
-DSTM32L4xx
)

target_include_directories(cubeL4 PUBLIC
$<BUILD_INTERFACE:${HARDWARE_DIR}/boards/stm32/NUCLEO-L476RG/Inc>
$<INSTALL_INTERFACE:bsp/Inc>

${STM32_DIR}/Drivers/CMSIS/Device/ST/STM32L4xx/Include
${STM32_DIR}/Drivers/CMSIS/Include
${STM32_DIR}/Drivers/STM32L4xx_HAL_Driver/Inc

${STM32_DIR}/Middlewares/Third_Party/FatFs/src
)

target_sources(cubeL4 PRIVATE
${HARDWARE_DIR}/boards/stm32/NUCLEO-L476RG/Src/fatfs.c
${HARDWARE_DIR}/boards/stm32/NUCLEO-L476RG/Src/user_diskio.c

${STM32_DIR}/Middlewares/Third_Party/FatFs/src/diskio.c
${STM32_DIR}/Middlewares/Third_Party/FatFs/src/ff.c
${STM32_DIR}/Middlewares/Third_Party/FatFs/src/ff_gen_drv.c
${STM32_DIR}/Middlewares/Third_Party/FatFs/src/ff_gen_drv.c
${STM32_DIR}/Middlewares/Third_Party/FatFs/src/option/ccsbcs.c
${STM32_DIR}/Middlewares/Third_Party/FatFs/src/option/syscall.c

${STM32_DIR}/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal.c
${STM32_DIR}/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_cortex.c
${STM32_DIR}/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_dma.c
${STM32_DIR}/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_gpio.c
${STM32_DIR}/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_pwr_ex.c
${STM32_DIR}/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_rcc.c
${STM32_DIR}/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_rcc_ex.c
${STM32_DIR}/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_sd.c
${STM32_DIR}/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_tim.c
${STM32_DIR}/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_tim_ex.c
${STM32_DIR}/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_uart.c
${STM32_DIR}/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_ll_sdmmc.c
)

add_library(cubeL4-bsp INTERFACE)
target_sources(cubeL4-bsp INTERFACE
  $<BUILD_INTERFACE:${HARDWARE_DIR}/boards/stm32/NUCLEO-L476RG/Src/main.c>
  $<BUILD_INTERFACE:${HARDWARE_DIR}/boards/stm32/NUCLEO-L476RG/Src/startup_stm32l476xx.s>
  $<BUILD_INTERFACE:${HARDWARE_DIR}/boards/stm32/NUCLEO-L476RG/Src/stm32l4xx_hal_msp.c>
  $<BUILD_INTERFACE:${HARDWARE_DIR}/boards/stm32/NUCLEO-L476RG/Src/stm32l4xx_it.c>
  $<BUILD_INTERFACE:${HARDWARE_DIR}/boards/stm32/NUCLEO-L476RG/Src/syscalls.c>
  $<BUILD_INTERFACE:${HARDWARE_DIR}/boards/stm32/NUCLEO-L476RG/Src/sysmem.c>
  $<BUILD_INTERFACE:${HARDWARE_DIR}/boards/stm32/NUCLEO-L476RG/Src/system_stm32l4xx.c>

  $<INSTALL_INTERFACE:bsp/Src/main.c>
  $<INSTALL_INTERFACE:bsp/Src/startup_stm32l476xx.s>
  $<INSTALL_INTERFACE:bsp/Src/stm32l4xx_hal_msp.c>
  $<INSTALL_INTERFACE:bsp/Src/stm32l4xx_it.c>
  $<INSTALL_INTERFACE:bsp/Src/syscalls.c>
  $<INSTALL_INTERFACE:bsp/Src/sysmem.c>
  $<INSTALL_INTERFACE:bsp/Src/system_stm32l4xx.c>
  )

target_link_options(cubeL4-bsp INTERFACE
-specs=nano.specs
-T${HARDWARE_DIR}/boards/stm32/NUCLEO-L476RG/STM32L476RGTX_FLASH.ld
)
target_link_libraries(cubeL4-bsp INTERFACE cubeL4)

install(TARGETS cubeL4-bsp)
install(DIRECTORY ${HARDWARE_DIR}/boards/stm32/NUCLEO-L476RG/Src DESTINATION bsp)
install(DIRECTORY ${HARDWARE_DIR}/boards/stm32/NUCLEO-L476RG/Inc DESTINATION bsp)
