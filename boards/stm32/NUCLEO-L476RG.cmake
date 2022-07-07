
target_compile_options(cubeL4 PUBLIC
  -DUSE_HAL_DRIVER
  -DSTM32L4xx
  )

target_include_directories(cubeL4 PUBLIC
  $<INSTALL_INTERFACE:bsp/Inc>

  ${STM32_DIR}/Middlewares/Third_Party/FreeRTOS/Source/include
  ${STM32_DIR}/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1
  ${STM32_DIR}/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2

  ${STM32_DIR}/Drivers/CMSIS/Device/ST/STM32L4xx/Include
  ${STM32_DIR}/Drivers/CMSIS/Include
  ${STM32_DIR}/Drivers/STM32L4xx_HAL_Driver/Inc

  ${STM32_DIR}/Middlewares/Third_Party/LwIP/src/include
  ${STM32_DIR}/Middlewares/Third_Party/LwIP/system

  ${STM32_DIR}/Middlewares/Third_Party/FatFs/src
  )

target_include_directories(cubeL4 PRIVATE
  ${STM32_DIR}/Middlewares/Third_Party/LwIP/src/include/compat/posix
  ${STM32_DIR}/Middlewares/Third_Party/LwIP/src/include/compat/posix/arpa
  ${STM32_DIR}/Middlewares/Third_Party/LwIP/src/include/compat/posix/net
  ${STM32_DIR}/Middlewares/Third_Party/LwIP/src/include/compat/posix/sys
  ${STM32_DIR}/Middlewares/Third_Party/LwIP/src/include/compat/stdc
  ${STM32_DIR}/Middlewares/Third_Party/LwIP/src/include/netif
  ${STM32_DIR}/Middlewares/Third_Party/LwIP/system/arch
  )


  ${STM32_DIR}/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2/cmsis_os2.c
  ${STM32_DIR}/Middlewares/Third_Party/FreeRTOS/Source/event_groups.c
  ${STM32_DIR}/Middlewares/Third_Party/FreeRTOS/Source/list.c
  ${STM32_DIR}/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1/port.c
  ${STM32_DIR}/Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/heap_4.c
  ${STM32_DIR}/Middlewares/Third_Party/FreeRTOS/Source/queue.c
  ${STM32_DIR}/Middlewares/Third_Party/FreeRTOS/Source/tasks.c
  ${STM32_DIR}/Middlewares/Third_Party/FreeRTOS/Source/timers.c

  ${STM32_DIR}/Middlewares/Third_Party/LwIP/src/api/api_lib.c
  ${STM32_DIR}/Middlewares/Third_Party/LwIP/src/api/api_msg.c
  ${STM32_DIR}/Middlewares/Third_Party/LwIP/src/api/err.c
  ${STM32_DIR}/Middlewares/Third_Party/LwIP/src/api/if_api.c
  ${STM32_DIR}/Middlewares/Third_Party/LwIP/src/api/netbuf.c
  ${STM32_DIR}/Middlewares/Third_Party/LwIP/src/api/netdb.c
  ${STM32_DIR}/Middlewares/Third_Party/LwIP/src/api/netifapi.c
  ${STM32_DIR}/Middlewares/Third_Party/LwIP/src/api/sockets.c
  ${STM32_DIR}/Middlewares/Third_Party/LwIP/src/api/tcpip.c
  ${STM32_DIR}/Middlewares/Third_Party/LwIP/src/core/def.c
  ${STM32_DIR}/Middlewares/Third_Party/LwIP/src/core/init.c
  ${STM32_DIR}/Middlewares/Third_Party/LwIP/src/core/ip.c
  ${STM32_DIR}/Middlewares/Third_Party/LwIP/src/core/ipv4/dhcp.c
  ${STM32_DIR}/Middlewares/Third_Party/LwIP/src/core/ipv4/etharp.c
  ${STM32_DIR}/Middlewares/Third_Party/LwIP/src/core/ipv4/icmp.c
  ${STM32_DIR}/Middlewares/Third_Party/LwIP/src/core/ipv4/ip4.c
  ${STM32_DIR}/Middlewares/Third_Party/LwIP/src/core/ipv4/ip4_addr.c
  ${STM32_DIR}/Middlewares/Third_Party/LwIP/src/core/ipv4/ip4_frag.c
  ${STM32_DIR}/Middlewares/Third_Party/LwIP/src/core/mem.c
  ${STM32_DIR}/Middlewares/Third_Party/LwIP/src/core/memp.c
  ${STM32_DIR}/Middlewares/Third_Party/LwIP/src/core/netif.c
  ${STM32_DIR}/Middlewares/Third_Party/LwIP/src/core/pbuf.c
  ${STM32_DIR}/Middlewares/Third_Party/LwIP/src/core/stats.c
  ${STM32_DIR}/Middlewares/Third_Party/LwIP/src/core/tcp.c
  ${STM32_DIR}/Middlewares/Third_Party/LwIP/src/core/tcp_in.c
  ${STM32_DIR}/Middlewares/Third_Party/LwIP/src/core/tcp_out.c
  ${STM32_DIR}/Middlewares/Third_Party/LwIP/src/core/timeouts.c
  ${STM32_DIR}/Middlewares/Third_Party/LwIP/src/core/udp.c
  ${STM32_DIR}/Middlewares/Third_Party/LwIP/src/netif/ethernet.c
  ${STM32_DIR}/Middlewares/Third_Party/LwIP/system/OS/sys_arch.c

  ${STM32_DIR}/Middlewares/Third_Party/FatFs/src/diskio.c
  ${STM32_DIR}/Middlewares/Third_Party/FatFs/src/ff.c
  ${STM32_DIR}/Middlewares/Third_Party/FatFs/src/ff_gen_drv.c
  ${STM32_DIR}/Middlewares/Third_Party/FatFs/src/ff_gen_drv.c
  ${STM32_DIR}/Middlewares/Third_Party/FatFs/src/option/ccsbcs.c
  ${STM32_DIR}/Middlewares/Third_Party/FatFs/src/option/syscall.c

  ${STM32_DIR}/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal.c
  ${STM32_DIR}/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_cortex.c
  ${STM32_DIR}/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_dma.c
  ${STM32_DIR}/Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_eth.c
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

target_link_options(cubeL4-bsp INTERFACE
  -specs=nano.specs
  -T${HARDWARE_DIR}/boards/stm32/STM32L476RGTX_FLASH.ld
  )

install(DIRECTORY ${HARDWARE_DIR}/boards/stm32/Src DESTINATION bsp)
install(DIRECTORY ${HARDWARE_DIR}/boards/stm32/Inc DESTINATION bsp)
