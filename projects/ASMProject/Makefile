all: hello
hello: hello.o asm_io.o
	gcc -m32 -o $@ $+ ~/Assembly-Projects/templateMake/driver.c

hello.o: hello.asm 
	nasm -f elf hello.asm -o hello.o

asm_io.o: $(HOME)/templateMake/asm_io.asm 
	nasm -f elf -d ELF_TYPE ~/Assembly-Projects/templateMake/asm_io.asm -o asm_io.o

clean:
	rm hello *.o
