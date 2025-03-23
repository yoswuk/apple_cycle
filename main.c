#include <stdio.h>
#include "apple_cycles.h"

int main(void)
{
    uint64_t cycle;
    setup_rdtsc();
    cycle =  cpucycles();

    printf("%llu\n", cycle);

    return 0;
}