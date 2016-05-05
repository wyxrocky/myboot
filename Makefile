
all : start.o
	arm-none-linux-gnueabi-ld -Tgboot.lds -o gboot.elf $^
	arm-none-linux-gnueabi-objcopy -O binary gboot.elf gboot.bin



%.o : %.S 
	arm-none-linux-gnueabi-gcc -g -c $^

%.o : %.c
	arm-none-linux-gnueabi-gcc -g -c $^

.PHONY:  clean
clean:
	rm  *.o  *.elf  *.bin
