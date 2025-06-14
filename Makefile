# Template makefile for compiling & statically linking the raylib libray on windows systems
# <------------------------------------------------------------------------------------->
# To run on windows systems, you must have the MinGW compiler installed
# to make type mingw32-make in the terminal
# <------------------------------------------------------------------------------------->

# Compiler Properties
CC = g++ # Specify the compiler you wish to use
CFLAGS = -Wall -Wextra # List any compiler (warning) flags you wish to use

# Specify Files
SRC_FILES = src/main.cpp src/board.cpp # List all source files (include src/ directory)
OBJ_FILES = main.o  # List all object files (omit src/ directory)

# Specify include directoriy / lib archive file path
I_DIR = raylib/include
LIB_FILE = raylib/lib/libraylib.a

RM = del /Q # Specify the remove command for windows systems

# Specify output binary name
BINARY = test.exe # Give a name for the compiled executible


# Makefile targets:
# Type "make" to compile & link executible
# Type "make run" to compile, link, & then run executible
# Type "make clean" to remove all object files, emacs backups, and the compiled binary

default: compile_&_link

# Compile & link
compile_&_link:
	$(CC) $(CFLAGS) -I $(I_DIR) -c $(SRC_FILES)
	$(CC) $(CFLAGS) -o $(BINARY) $(OBJ_FILES) $(LIB_FILE) -lopengl32 -lgdi32 -lwinmm
	$(RM) *.o

# Run program after compile & link
run: compile_&_link
	./$(BINARY)

# clear up workspace
clean:
	$(RM) $(BINARY)
