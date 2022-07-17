#[=======================================================================[.rst:
Toolchain for STM32 L476XX
-----------------------------

The following environment variables must be set when cmake
configuration is invoked::

  BOARD         - Name of board
  STM32_DIR     - Path to STM32 firmware
  HARDWARE_DIR  - Path to Hardware directory containing board setup

Your CMAKE_MODULE_PATH must also be configured so that
Platform/vendor-none.cmake can be found, to build for non vendor and/or
non-os embedded system.
#]=======================================================================]

include_guard()

# set dummy using the toolchain file name to avoid warning when
# re-building. As env variable toolchain path is ignored for re-builds
set(DUMMY ${CMAKE_TOOLCHAIN_FILE})

# Collect all environment variables for this toolchain
set(BOARD $ENV{BOARD} CACHE STRING "")
set(STM32_DIR $ENV{STM32_DIR} CACHE PATH "STM firmware dir path")
set(HARDWARE_DIR $ENV{HARDWARE_DIR} CACHE PATH "Hardware board setup dir path") 


# Target Setup for Toolchain: target-vendor-os triplet 
set(CMAKE_SYSTEM_NAME vendor-none)
set(CMAKE_SYSTEM_PROCESSOR cortex-a53)

# Set specefic cross-compiler for this toolchain
set(CMAKE_C_COMPILER arm-none-linux-gnueabihf-gcc${HOST_EXECUTABLE_SUFFIX})
set(CMAKE_CXX_COMPILER arm-none-linux-gnueabihf-g++${HOST_EXECUTABLE_SUFFIX})
set(OBJCOPY arm-none-linux-gnueabihf-objcopy${HOST_EXECUTABLE_SUFFIX})
set(CMAKE_ASM-ATT_COMPILER arm-none-linux-gnueabihf-as${HOST_EXECUTABLE_SUFFIX})

# Set compiler flags. Note: These are cached, any addition later should 
# be with FORCE.
set(CMAKE_C_FLAGS_INIT
  "-mcpu=cortex-a53 -mfpu=vfpv3 -mfloat-abi=hard"
)
set(CMAKE_CXX_FLAGS_INIT
  "-mcpu=cortex-a53 -mfpu=vfpv3 -mfloat-abi=hard"
)
set(CMAKE_ASM_FLAGS_INIT
  "-mcpu=cortex-a53 -mfpu=vfpv3 -mfloat-abi=hard"
)

# Avoid testing compiler by compiling a default file.
set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)
