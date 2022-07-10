#[=======================================================================[.rst:
Common CMake settings
-----------------------------

Common CMake settings whaich maybe useful for your configuration. If not
then define these in your cmake project or cmake scripts.
#]=======================================================================]
include(CMakePrintHelpers)

# Disable using -isystem for imported libraries. Needed because gcc wraps
# -isystem headers in 'extern "C"' leading to problems with C++ libraries.
set(CMAKE_NO_SYSTEM_FROM_IMPORTED ON)

# Set default build type.
set(CMAKE_CONFIGURATION_TYPES "Debug;Release")
if(NOT CMAKE_BUILD_TYPE)
  set(CMAKE_BUILD_TYPE "Debug" CACHE STRING "Build type (Debug or Release)" FORCE)
endif()

# Set suffix for host executable names. Empty for non-Windows hosts.
if(WIN32)
  set(HOST_EXECUTABLE_SUFFIX ".exe")
endif()
