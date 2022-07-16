set(STM32_DUINO ${STM32_DIR}/../../stm32duino CACHE PATH "stm32duino dir path")
set(Variant "STM32L4xx")
set(Board_Variant "L475R(C-E-G)T_L476R(C-E-G)T_L486RGT")

add_library(stm32duino STATIC)

target_compile_options(stm32duino PUBLIC
-DDEBUG
-fdata-sections
-ffunction-sections
)

target_include_directories(stm32duino PUBLIC

${STM32_DUINO}/Arduino_Core_STM32/variants/${Variant}/${Board_Variant}

${STM32_DUINO}/Arduino_Core_STM32/cores/arduino/avr
${STM32_DUINO}/Arduino_Core_STM32/cores/arduino/stm32
${STM32_DUINO}/Arduino_Core_STM32/cores/arduino
${STM32_DUINO}/Arduino_Core_STM32/cores/arduino/stm32/usb
${STM32_DUINO}/Arduino_Core_STM32/cores/arduino/stm32/OpenAMP

${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/LL
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/stm32
)

target_sources(stm32duino PUBLIC
${STM32_DUINO}/Arduino_Core_STM32/variants/${Variant}/${Board_Variant}/variant_NUCLEO_L476RG.cpp

${STM32_DUINO}/Arduino_Core_STM32/variants/${Variant}/${Board_Variant}/PeripheralPins.c 
${STM32_DUINO}/Arduino_Core_STM32/variants/${Variant}/${Board_Variant}/generic_clock.c
${STM32_DUINO}/Arduino_Core_STM32/variants/${Variant}/${Board_Variant}/variant_generic.cpp

${STM32_DUINO}/Arduino_Core_STM32/cores/arduino/avr/dtostrf.c  

${STM32_DUINO}/Arduino_Core_STM32/cores/arduino/stm32/startup_stm32yyxx.S

${STM32_DUINO}/Arduino_Core_STM32/cores/arduino/board.c                                                                       
${STM32_DUINO}/Arduino_Core_STM32/cores/arduino/hooks.c
${STM32_DUINO}/Arduino_Core_STM32/cores/arduino/itoa.c
${STM32_DUINO}/Arduino_Core_STM32/cores/arduino/pins_arduino.c                                                                
${STM32_DUINO}/Arduino_Core_STM32/cores/arduino/wiring_analog.c
${STM32_DUINO}/Arduino_Core_STM32/cores/arduino/wiring_digital.c                                   
${STM32_DUINO}/Arduino_Core_STM32/cores/arduino/wiring_shift.c                                                                
${STM32_DUINO}/Arduino_Core_STM32/cores/arduino/wiring_time.c                                                                                                                                                                                                                     

${STM32_DUINO}/Arduino_Core_STM32/cores/arduino/abi.cpp
${STM32_DUINO}/Arduino_Core_STM32/cores/arduino/HardwareSerial.cpp 
${STM32_DUINO}/Arduino_Core_STM32/cores/arduino/HardwareTimer.cpp 
${STM32_DUINO}/Arduino_Core_STM32/cores/arduino/IPAddress.cpp
${STM32_DUINO}/Arduino_Core_STM32/cores/arduino/main.cpp 
${STM32_DUINO}/Arduino_Core_STM32/cores/arduino/new.cpp
${STM32_DUINO}/Arduino_Core_STM32/cores/arduino/Print.cpp
${STM32_DUINO}/Arduino_Core_STM32/cores/arduino/RingBuffer.cpp
${STM32_DUINO}/Arduino_Core_STM32/cores/arduino/Stream.cpp 
${STM32_DUINO}/Arduino_Core_STM32/cores/arduino/Tone.cpp 
${STM32_DUINO}/Arduino_Core_STM32/cores/arduino/USBSerial.cpp
${STM32_DUINO}/Arduino_Core_STM32/cores/arduino/VirtIOSerial.cpp
${STM32_DUINO}/Arduino_Core_STM32/cores/arduino/WInterrupts.cpp
${STM32_DUINO}/Arduino_Core_STM32/cores/arduino/wiring_pulse.cpp
${STM32_DUINO}/Arduino_Core_STM32/cores/arduino/WMath.cpp 
${STM32_DUINO}/Arduino_Core_STM32/cores/arduino/WSerial.cpp
${STM32_DUINO}/Arduino_Core_STM32/cores/arduino/WString.cpp 


${STM32_DUINO}/Arduino_Core_STM32/cores/arduino/stm32/usb/usb_device_core.c   
${STM32_DUINO}/Arduino_Core_STM32/cores/arduino/stm32/usb/usb_device_ctlreq.c 
${STM32_DUINO}/Arduino_Core_STM32/cores/arduino/stm32/usb/usb_device_ioreq.c                                                                                   
${STM32_DUINO}/Arduino_Core_STM32/cores/arduino/stm32/usb/usbd_conf.c                                                                                            
${STM32_DUINO}/Arduino_Core_STM32/cores/arduino/stm32/usb/usbd_desc.c                                                                                            
${STM32_DUINO}/Arduino_Core_STM32/cores/arduino/stm32/usb/usbd_ep_conf.c                                                                                         
${STM32_DUINO}/Arduino_Core_STM32/cores/arduino/stm32/usb/usbd_if.c                                                                                              
${STM32_DUINO}/Arduino_Core_STM32/cores/arduino/stm32/usb/cdc/cdc_queue.c                                                                                        
${STM32_DUINO}/Arduino_Core_STM32/cores/arduino/stm32/usb/cdc/usbd_cdc.c                                                                                         
${STM32_DUINO}/Arduino_Core_STM32/cores/arduino/stm32/usb/cdc/usbd_cdc_if.c                                                                                      
${STM32_DUINO}/Arduino_Core_STM32/cores/arduino/stm32/usb/hid/usbd_hid_composite.c                                                                               
${STM32_DUINO}/Arduino_Core_STM32/cores/arduino/stm32/usb/hid/usbd_hid_composite_if.c                                                                            

${STM32_DUINO}/Arduino_Core_STM32/cores/arduino/stm32/OpenAMP/mbox_ipcc.c
${STM32_DUINO}/Arduino_Core_STM32/cores/arduino/stm32/OpenAMP/openamp.c
${STM32_DUINO}/Arduino_Core_STM32/cores/arduino/stm32/OpenAMP/rsc_table.c
${STM32_DUINO}/Arduino_Core_STM32/cores/arduino/stm32/OpenAMP/virtio_buffer.c
${STM32_DUINO}/Arduino_Core_STM32/cores/arduino/stm32/OpenAMP/virtio_log.c
${STM32_DUINO}/Arduino_Core_STM32/cores/arduino/stm32/OpenAMP/virt_uart.c 

${STM32_DUINO}/Arduino_Core_STM32/cores/arduino/stm32/OpenAMP/libmetal/device.c
${STM32_DUINO}/Arduino_Core_STM32/cores/arduino/stm32/OpenAMP/libmetal/init.c
${STM32_DUINO}/Arduino_Core_STM32/cores/arduino/stm32/OpenAMP/libmetal/io.c
${STM32_DUINO}/Arduino_Core_STM32/cores/arduino/stm32/OpenAMP/libmetal/log.c
${STM32_DUINO}/Arduino_Core_STM32/cores/arduino/stm32/OpenAMP/libmetal/shmem.c

${STM32_DUINO}/Arduino_Core_STM32/cores/arduino/stm32/OpenAMP/libmetal/generic/condition.c
${STM32_DUINO}/Arduino_Core_STM32/cores/arduino/stm32/OpenAMP/libmetal/generic/generic_device.c
${STM32_DUINO}/Arduino_Core_STM32/cores/arduino/stm32/OpenAMP/libmetal/generic/generic_init.c
${STM32_DUINO}/Arduino_Core_STM32/cores/arduino/stm32/OpenAMP/libmetal/generic/generic_io.c
${STM32_DUINO}/Arduino_Core_STM32/cores/arduino/stm32/OpenAMP/libmetal/generic/generic_shmem.c
${STM32_DUINO}/Arduino_Core_STM32/cores/arduino/stm32/OpenAMP/libmetal/generic/time.c

${STM32_DUINO}/Arduino_Core_STM32/cores/arduino/stm32/OpenAMP/libmetal/generic/cortexm/sys.c

${STM32_DUINO}/Arduino_Core_STM32/cores/arduino/stm32/OpenAMP/open-amp/remoteproc/remoteproc_virtio.c

${STM32_DUINO}/Arduino_Core_STM32/cores/arduino/stm32/OpenAMP/open-amp/rpmsg/rpmsg.c
${STM32_DUINO}/Arduino_Core_STM32/cores/arduino/stm32/OpenAMP/open-amp/rpmsg/rpmsg_virtio.c

${STM32_DUINO}/Arduino_Core_STM32/cores/arduino/stm32/OpenAMP/virtio/virtio.c
${STM32_DUINO}/Arduino_Core_STM32/cores/arduino/stm32/OpenAMP/virtio/virtqueue.c


${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/syscalls.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_adc.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_adc_ex.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_can.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_cec.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_comp.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_comp_ex.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_cordic.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_cortex.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_crc.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_crc_ex.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_cryp.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_cryp_ex.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_dac.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_dac_ex.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_dcmi.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_dcmi_ex.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_dfsdm.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_dfsdm_ex.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_dma.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_dma_ex.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_dma2d.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_dsi.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_dts.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_eth.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_eth_ex.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_exti.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_fdcan.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_firewall.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_flash.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_flash_ex.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_flash_ramfunc.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_fmac.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_fmpi2c.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_fmpi2c_ex.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_fmpsmbus.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_fmpsmbus_ex.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_gfxmmu.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_gpio.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_gpio_ex.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_gtzc.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_hash.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_hash_ex.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_hcd.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_hrtim.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_hsem.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_i2c.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_i2c_ex.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_i2s.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_i2s_ex.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_icache.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_ipcc.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_irda.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_iwdg.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_jpeg.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_lcd.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_lptim.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_ltdc.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_ltdc_ex.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_mdios.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_mdma.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_mmc.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_mmc_ex.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_nand.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_nor.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_opamp.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_opamp_ex.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_ospi.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_otfdec.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_pccard.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_pcd.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_pcd_ex.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_pka.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_pssi.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_pwr.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_pwr_ex.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_qspi.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_ramecc.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_rcc.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_rcc_ex.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_rng.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_rng_ex.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_rtc.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_rtc_ex.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_sai.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_sai_ex.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_sd.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_sd_ex.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_sdadc.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_sdram.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_smartcard.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_smartcard_ex.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_smbus.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_smbus_ex.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_spdifrx.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_spi.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_spi_ex.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_sram.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_swpmi.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_tim.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_tim_ex.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_tsc.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_uart.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_uart_ex.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_usart.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_usart_ex.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/HAL/stm32yyxx_hal_wwdg.c


${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_adc.c                                                                                      
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_bdma.c                                                                                     
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_comp.c                                                                                     
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_cordic.c                                                                                   
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_crc.c                                                                                      
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_crs.c                                                                                      
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_dac.c                                                                                      
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_delayblock.c                                                                               
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_dma.c                                                                                      
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_dma2d.c                                                                                    
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_exti.c                                                                                     
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_fmac.c                                                                                     
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_fmc.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_fmpi2c.c                                                                                      
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_fsmc.c                                                                                     
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_gpio.c                                                                                     
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_hrtim.c                                                                                    
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_i2c.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_icache.c                                                                                      
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_lptim.c                                                                                    
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_lpuart.c                                                                                   
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_mdma.c                                                                                     
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_opamp.c                                                                                    
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_pka.c                                                                                      
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_pwr.c                                                                                      
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_rcc.c                                                                                      
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_rtc.c                                                                                      
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_rng.c                                                                                      
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_sdmmc.c                                                                                    
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_spi.c                                                                                      
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_swpmi.c                                                                                    
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_tim.c                                                                                      
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_ucpd.c                                                                                     
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_usart.c                                                                                    
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_usb.c                                                                                      
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/LL/stm32yyxx_ll_utils.c                                                                                    


${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/stm32/bootloader.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/stm32/clock.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/stm32/core_callback.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/stm32/dwt.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/stm32/hw_config.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/stm32/interrupt.cpp
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/stm32/otp.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/stm32/pinmap.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/stm32/PortNames.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/stm32/stm32_def.c

${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/stm32/system_stm32yyxx.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/stm32/timer.c
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/stm32/uart.c


${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/stm32/analog.cpp
${STM32_DUINO}/Arduino_Core_STM32/libraries/SrcWrapper/src/stm32/interrupt.cpp

)
