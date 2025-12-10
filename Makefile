SRC = ./src
BLD = ./build

build: $(SRC)/*.asm
	nasm -f elf64 $(SRC)/*.asm -o $(BLD)/main.o
	ld $(BLD)/main.o -o $(BLD)/main

clean:
	rm -rf $(BLD)/*