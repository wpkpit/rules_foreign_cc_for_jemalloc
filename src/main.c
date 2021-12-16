#include <stdio.h>

#include "jemalloc/jemalloc.h"

int main()
{
    void *p = malloc(1024);
    if (p == NULL)
        return -1;
        
    printf("Allocated memory\n");
        
    return 0;
}
