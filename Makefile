SRC = ./src
BLD = ./build

.PHONY: build clean all

$(BLD): $(SRC)/*.s
	mkdir $(BLD)
	nasm -f elf64 $(SRC)/*.s -o $(BLD)/main.o
	ld $(BLD)/main.o -o $(BLD)/main

clean:
	rm -rf $(BLD)