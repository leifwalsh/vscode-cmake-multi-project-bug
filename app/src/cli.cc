#include <cstdint>
#include <cstdlib>
#include <iostream>

#include "fib.hh"

int main(int argc, const char *const argv[])
{
    long long n = std::atoll(argv[1]);
    uint64_t fib = libfib::fib(n);
    std::cout << fib << std::endl;
    return 0;
}