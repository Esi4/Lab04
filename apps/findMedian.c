#include <stddef.h>
#include "median.h"

int findMedian(const unsigned *array, size_t length) {
    int y = 0;
    int i;
    int j;
    for(i = 0; i < length; i++) {
        int x = 0;
        int z = 0;
        for(j = 0; j < length; j++) {
            if (array[i] > array[j]) {
                x++;
            } else if (array[i] < array[j]) {
                x--;
            } else if (array[i] == array[j]) {
                z++;
            }
        }
        if(z == length) {
            y = z;
        } else if (x == 0) {
            y = array[i];
        } else if(x == 1 || x == -1) {
            y += array[i] / 2;
        }
    }
    return(y);
}

