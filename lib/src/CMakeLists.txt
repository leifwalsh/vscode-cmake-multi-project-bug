cmake_minimum_required(VERSION 3.22)
project(libfib LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 20)

enable_testing()

add_subdirectory(third_party/catch2)

add_library(fib SHARED fib.cc)
set_target_properties(fib PROPERTIES PUBLIC_HEADER fib.hh)
target_include_directories(fib INTERFACE
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}>
    $<INSTALL_INTERFACE:include>
)

install(
    TARGETS fib
    EXPORT libfib-config
)
install(
    EXPORT libfib-config
    NAMESPACE libfib::
    DESTINATION share/cmake/libfib
)

add_executable(fib_tests fib_tests.cc)
target_link_libraries(fib_tests fib catch2)
add_test(
    NAME fib_tests
    COMMAND fib_tests
)
