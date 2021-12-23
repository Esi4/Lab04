.PHONY: all clean

# Файлы для сборки исполнимого файла
OBJS= main.c libMedian.a

CC = riscv64-unknown-elf-gcc.exe

CFLAGS= -march=rv64iac -mabi=lp64 -O1 --save-temps

INCLUDES+= -I .

vpath %.c .
vpath %.a .

all: main.out

# Сборка исполнимого файла
main.out: $(OBJS)
	$(CC) $(CFLAGS) $(INCLUDES) $^
	del *.i *.d