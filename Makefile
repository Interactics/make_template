CC=gcc #Compiler
CFLAG=-g -Wall #Compile Option 
#Generate source-level debug information && Enable the all warning
OBJS=main.o foo.o bar.o
TARGET=app.bin

all : $(TARGET)

clean :
	rm -f *.o
	rm -f $(TARGET)

$(TARGET) : $(OBJS)

$(CC) -o $@ $^

				
