CC=gcc #Compiler
CFLAG=-g -Wall #Compile Option 
#Generate source-level debug information && Enable the all warning
TARGET=app.bin
SRC=$(wildcard *.c)
OBJS=$(SRC:.c=.o)

all : $(TARGET)

clean :
	rm -f $(OBJS) $(TARGET) 

$(TARGET) : $(OBJS)
	$(CC) -o $@ $^

				
