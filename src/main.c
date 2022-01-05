#include <stdio.h>

#include "jemalloc/jemalloc.h"

int main()
{
    void *p = malloc(1024);
    if (p == NULL)
        return -1;
        
    printf("Allocated memory\n");
    malloc_stats_print(NULL, NULL, NULL);
        
    return 0;
}
