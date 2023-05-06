CC=g++
SRC_DIR=src
INCLUDE_DIR=include
BUILD_DIR=build
CFLAGS=-c -Wall -I$(INCLUDE_DIR)
COMPILE_SRC=$(CC) $(CFLAGS) $(SRC_DIR)
OUTPUT_TO=-o $(BUILD_DIR)

all: main.o

main.o: executor.o
	$(COMPILE_SRC)/main.c $(OUTPUT_TO)/main.o

executor.o:  
	$(COMPILE_SRC)/executor.c $(OUTPUT_TO)/executor.o