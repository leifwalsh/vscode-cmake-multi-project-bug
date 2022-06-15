#include "fib.hh"

namespace libfib
{

    uint64_t fib(uint64_t n)
    {
        uint64_t a = 0;
        uint64_t b = 1;
        while (n-- > 0)
        {
            uint64_t c = b;
            b = a + b;
            a = c;
        }
        return a;
    }

}