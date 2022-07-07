#[=======================================================================[.rst:
stm32 toolchain
-------------------

The following environment variables must be set when cmake
configuration is invoked::

  CPU           - Name of CPU
  BOARD         - Name of board
  STM32_DIR     - Path to STM32 firmware
  HARDWARE_DIR  - Path to Hardware directory containing board setup

Machine-specific flags will be loaded from toolchain/${CPU}.cmake. See
the toolchain folder for known values.

Your CMAKE_MODULE_PATH must also be configured so that
Platform/STM32L4.cmake can be found.
#]=======================================================================]

include_guard()

# The name of the target operating system
set(CMAKE_SYSTEM_NAME STM32L4)

set(CPU $ENV{CPU} CACHE STRING "")
set(BOARD $ENV{BOARD} CACHE STRING "")
set(STM32_DIR $ENV{STM32_DIR} CACHE PATH "STM firmware dir path")
set(HARDWARE_DIR $ENV{HARDWARE_DIR} CACHE PATH "Hardware board setup dir path") 

# Set cross-compiler toolchain
set(CMAKE_C_COMPILER arm-none-eabi-gcc)
set(CMAKE_CXX_COMPILER ${CMAKE_C_COMPILER})
set(OBJCOPY arm-none-eabi-objcopy)
if(CMAKE_HOST_WIN32)
  set(CMAKE_C_COMPILER ${CMAKE_C_COMPILER}.exe)
  set(CMAKE_CXX_COMPILER ${CMAKE_CXX_COMPILER}.exe)
  set(OBJCOPY ${OBJCOPY}.exe)
endif(CMAKE_HOST_WIN32)

# Set cross-compiler machine-specific flags
include(toolchain/${CPU})