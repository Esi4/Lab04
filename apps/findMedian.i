# 1 "C:\\Users\\Goose\\Desktop\\LabkaProg\\findMedian.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:\\Users\\Goose\\Desktop\\LabkaProg\\findMedian.c"
# 1 "c:\\users\\goose\\desktop\\proga4lab\\lib\\gcc\\riscv64-unknown-elf\\10.2.0\\include\\stddef.h" 1 3 4
# 143 "c:\\users\\goose\\desktop\\proga4lab\\lib\\gcc\\riscv64-unknown-elf\\10.2.0\\include\\stddef.h" 3 4

# 143 "c:\\users\\goose\\desktop\\proga4lab\\lib\\gcc\\riscv64-unknown-elf\\10.2.0\\include\\stddef.h" 3 4
typedef long int ptrdiff_t;
# 209 "c:\\users\\goose\\desktop\\proga4lab\\lib\\gcc\\riscv64-unknown-elf\\10.2.0\\include\\stddef.h" 3 4
typedef long unsigned int size_t;
# 321 "c:\\users\\goose\\desktop\\proga4lab\\lib\\gcc\\riscv64-unknown-elf\\10.2.0\\include\\stddef.h" 3 4
typedef int wchar_t;
# 415 "c:\\users\\goose\\desktop\\proga4lab\\lib\\gcc\\riscv64-unknown-elf\\10.2.0\\include\\stddef.h" 3 4
typedef struct {
  long long __max_align_ll __attribute__((__aligned__(__alignof__(long long))));
  long double __max_align_ld __attribute__((__aligned__(__alignof__(long double))));
# 426 "c:\\users\\goose\\desktop\\proga4lab\\lib\\gcc\\riscv64-unknown-elf\\10.2.0\\include\\stddef.h" 3 4
} max_align_t;
# 2 "C:\\Users\\Goose\\Desktop\\LabkaProg\\findMedian.c" 2
# 1 "C:\\Users\\Goose\\Desktop\\LabkaProg\\median.h" 1




# 4 "C:\\Users\\Goose\\Desktop\\LabkaProg\\median.h"
int findMedian(const unsigned *array, size_t size);
# 3 "C:\\Users\\Goose\\Desktop\\LabkaProg\\findMedian.c" 2

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
