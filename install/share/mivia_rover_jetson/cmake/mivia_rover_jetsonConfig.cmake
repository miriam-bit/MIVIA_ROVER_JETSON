# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_mivia_rover_jetson_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED mivia_rover_jetson_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(mivia_rover_jetson_FOUND FALSE)
  elseif(NOT mivia_rover_jetson_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(mivia_rover_jetson_FOUND FALSE)
  endif()
  return()
endif()
set(_mivia_rover_jetson_CONFIG_INCLUDED TRUE)

# output package information
if(NOT mivia_rover_jetson_FIND_QUIETLY)
  message(STATUS "Found mivia_rover_jetson: 0.0.0 (${mivia_rover_jetson_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'mivia_rover_jetson' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT ${mivia_rover_jetson_DEPRECATED_QUIET})
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(mivia_rover_jetson_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${mivia_rover_jetson_DIR}/${_extra}")
endforeach()
