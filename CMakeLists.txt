cmake_minimum_required(VERSION 3.12)

project(nrf52-sdk C ASM)

include(cmake/nRF5-SDK.cmake)

file(GLOB_RECURSE all_examples sdk/examples/*/CMakeLists.txt)
foreach(example IN LISTS all_examples)
    message(STATUS "found example ${example}")
    get_filename_component(example_dir "${example}" DIRECTORY)
    add_subdirectory(${example_dir})
endforeach()
