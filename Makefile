CC=g++
SRC_DIR=src
INCLUDE_DIR=include
BUILD_DIR=build
CFLAGS=-c -Wall -I$(INCLUDE_DIR)

all: main.o

main.o: executor.o
	$(CC) $(CFLAGS) $(SRC_DIR)/main.c -o $(BUILD_DIR)/main.o

executor.o:  
	$(CC) $(CFLAGS) $(SRC_DIR)/executor.c -o $(BUILD_DIR)/executor.o