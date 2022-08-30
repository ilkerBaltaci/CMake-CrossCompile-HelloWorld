cmake_minimum_required(VERSION 3.5 FATAL_ERROR)

set(This CMake-CrossCompile-HelloWorld)

project(${This}, VERSION 1.0)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(BUILD_SHARED_LIBS OFF)
set(CMAKE_EXE_LINKER_FLAGS "-static-libgcc -static-libstdc++ -static")


set(GCC_CXX_FLAGS ${GCC_CXX_FLAGS} "-static-libgcc -static-libstdc++ -static")

set(
    Sources
    main.cpp 
)

include(GNUInstallDirs)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/${CMAKE_INSTALL_LIBDIR})
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/${CMAKE_INSTALL_LIBDIR})
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/${CMAKE_INSTALL_BINDIR})



add_executable(${This} ${Sources})

set_target_properties(${This} PROPERTIES LINK_SEARCH_END_STATIC 1)
