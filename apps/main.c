#include <stddef.h>
#include <stdio.h>
#include "median.h"

static unsigned array[] = {2, 5, 1, 6};
static const size_t length = sizeof(array) / sizeof(array[0]);


int main(void) {
    int i;
    printf("Input Array: \n");
    for(i = 0; i < length; i++) {
        printf("%i, ", array[i]);
    }
    int med = findMedian(array, length);
    printf("\nmedian = %i",med);
}
