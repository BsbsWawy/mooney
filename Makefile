CC=g++
SRC_DIR=src
INCLUDE_DIR=include
BUILD_DIR=build
CFLAGS=-c -Wall -I$(INCLUDE_DIR)
COMPILE_SRC=$(CC) $(CFLAGS) $(SRC_DIR)
OUTPUT_TO=-o $(BUILD_DIR)
EXE_DIRECTORY=build/exe
WIN_EXECUTABLE_NAME=mooney.exe

exe_run: exe
	$(EXE_DIRECTORY)/$(WIN_EXECUTABLE_NAME)

exe: all
	if not exist "$(EXE_DIRECTORY)" mkdir "$(EXE_DIRECTORY)" ;
	$(CC) $(BUILD_DIR)/*.o -o $(EXE_DIRECTORY)/$(WIN_EXECUTABLE_NAME)

all: main.o

main.o: executor.o
	$(COMPILE_SRC)/main.c $(OUTPUT_TO)/main.o

executor.o:  
	$(COMPILE_SRC)/executor.c $(OUTPUT_TO)/executor.o