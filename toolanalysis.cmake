# Dummy CMakeLists.txt for building ToolDAQFramework
cmake_minimum_required(VERSION 2.8)

project(toolanalysis)

add_custom_target(toolanalysis ALL
  # No-op to trick CMake into thinking we're doing something.
  # The real build is handled in the ups build CMakeLists.txt
  COMMAND true
  WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
)
