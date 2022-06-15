add_library(catch2 STATIC catch_amalgamated.cpp)
set_target_properties(catch2 PROPERTIES PUBLIC_HEADER catch_amalgamated.hpp)
target_include_directories(catch2 INTERFACE
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}>
    $<INSTALL_INTERFACE:include>
)