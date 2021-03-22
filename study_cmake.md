# Study CMake

## 1. Lecture Note
- Week0a (Install CMake)
  ```sh
  1) cmake --version
  2) Copy the link address of cmake-x.x.x-Linux-xx.sh file at [URL](https://cmake.org/download/)
     $ wget {$link_address}
     $ sudo sh cmake-x.x.x-Linux-xx.sh --prefix=/usr/local/ --exclude-subdir
     $ /usr/local/bin/cmake --version
     $ cmake --version
  ```

- Week0b (Run CMake)
  ```sh
  1) $ mkdir test
  2) $ cd test && nano CMakeLists.txt
     write in below
     cmake_minimum_required(version 3.12)
     project(MyProject VERSION 1.0.0)
  3) $ mkdir build && cd build
  4) $ cmake ..
  5) you can do the same to change configuration using $ ccmake .. or $ cmake-gui)
  ```

- Week0c (Using Visual Studio)
  ```sh
  1) Usage for Visual Studio
  ```

- Week0d (Visual C++ without Visual studio)
  ```sh
  1) Usage for Visual C++ without Visual studio
  ```

- Week0e (CMake in Visual Studio Code)
  ```sh
  1) Usage for CMake in Visual Studio Code
  ```

- Week1a (Build CMake)
  ```sh
  1) add below in CMakeLists.txt file
     add_executable(exec_name file_name.cpp)
  2) add file_name.cpp to src directory
  3) Ctrl + '`' to open a terminal window in VSCode
  4) cd build && cmake .. && cmake --build .
  5) ./exec_name
  ```

- Week1b (Add a library)
  ```sh
  1) add_executable(exec_name file_name.cpp file_name2.cpp)
  2) add_library(lib_name file_name2.hpp, file_name2.cpp)
     target_link_libraries(exec_name lib_name)
  ```

- Week1c (Subdirectories and Target Interface Properties)
  ```sh
  1) add_subdirectory(sub_dir_name)
     and add another CMakeLists.txt file in the subdirectory
  2) target_include_directories(lib_name PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}/src")
     target_link_libraries(exec_name lib_name)
     modify include file path in the file_name.cpp
  ```

- Week2a (Scripting Basics)
  ```sh
  1) Everything is String type, e.g., VERSION is the same as "VERSION"
  2) cmake_minimum_required(VERSION 3.12)
     project(MyProject VERSION 1.0.0)
     message(STATUS "I am a message.")
     set(MY_VARIABLE "I am a variable.")
     message(STATUS "The variable value: ${MY_VARIABLE}")  # assignment
     message(STATUS "The project name: ${PROJECT_NAME}")  # project name
     message(STATUS "The project version: ${PROJECT_VERSION}")  # project version
  ```

- Week2b (Control Flow and Auto-dereferencing)
  ```sh
  1) set(my_bool FALSE)
     if(my_bool)  # or if(${my_bool})
       message(STATUS "Condition was met.")
     else()
       message(STATUS "Condition failed.")
       if(NOT my_bool)
         message(STATUS "NOT usage example.")
       endif()
     endif()

     STREQUAL
     EQUAL
     LESS
     math(EXPR smth "smth + 1")
     while() endwhile()
     foreach() endforeach()

- Week2c (Functions, Scopes, Arguments, and List Expansion)
  ```sh
  1) set_property(GLOBAL PROPERTY property_name val1 val2 val3)
     get_cmake_property(var_name property_name)
     message(STATUS "${var_name}")
  2) Function:
     function(func_name first_arg)
       message(STATUS "First argument is ${first_arg}")
     endfunction()
     func_name(1) # 1 is first_arg
  3) Scope:
     set(var value PARENT_SCOPE)

- Week2d (Advanced Functions and cmake_parse_arguments() by Example)
  ```sh
  1) cmrc_add_resource_library()
     cmake_parse_arguments()
  ```

- Week2e (Source/Binary Directories and add_subdirectory())
  ```sh
  1) ${CMAKE_SOURCE_DIR}
     ${CMAKE_BINARY_DIR}
     ${PROJECT_SOURCE_DIR}
     ${PROJECT_BINARY_DIR}
     ${PROJECT_VERSION}
     ${CMAKE_CURRENT_SOURCE_DIR}
     ${CMAKE_CURRENT_BINARY_DIR}
     ${CMAKE_CURRENT_LIST_FILE}
     ${CMAKE_CURRENT_LIST_DIR}
  ```

## 2. Reference
- [How to CMake Good](https://www.youtube.com/playlist?list=PLK6MXr8gasrGmIiSuVQXpfFuE1uPT615s)
