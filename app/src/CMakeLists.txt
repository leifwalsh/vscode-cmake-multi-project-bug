cmake_minimum_required(VERSION 3.23)
project(libfib LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 20)

enable_testing()

find_package(libfib REQUIRED)

add_executable(cli cli.cc)
target_link_libraries(cli libfib::fib)

install(
    TARGETS cli
)

add_test(
    NAME test_cli
    COMMAND ./test_cli.sh $<TARGET_FILE:cli>
    WORKING_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}"
)