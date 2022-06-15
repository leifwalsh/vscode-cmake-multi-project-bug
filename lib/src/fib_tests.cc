#include "catch_amalgamated.hpp"
#include "fib.hh"

TEST_CASE("zero", "[fib]")
{
    REQUIRE(libfib::fib(0) == 0);
}
TEST_CASE("one", "[fib]")
{
    REQUIRE(libfib::fib(1) == 1);
}
TEST_CASE("two", "[fib]")
{
    REQUIRE(libfib::fib(2) == 1);
}
TEST_CASE("three", "[fib]")
{
    REQUIRE(libfib::fib(3) == 2);
}
TEST_CASE("four", "[fib]")
{
    REQUIRE(libfib::fib(4) == 3);
}
TEST_CASE("five", "[fib]")
{
    REQUIRE(libfib::fib(5) == 5);
}
TEST_CASE("six", "[fib]")
{
    REQUIRE(libfib::fib(6) == 8);
}