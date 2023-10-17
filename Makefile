OMPFLAGS = -fopenmp
OMPLIBS = -lgomp

CC = gcc
CPPFLAGS = -g3 -Wall -Wextra $(OMPFLAGS)
LDFLAGS = -g3 -Wall -Wextra
LDLIBS = $(OMPLIBS)

all: printNumbers printNumbersOMP

printNumbers: printNumbers.o
	$(CC) $(LDFLAGS) -o $@ $^

printNumbersOMP: printNumbersOMP.o
	$(CC) $(LDFLAGS) -o $@ $^ $(LDLIBS)

clean:
	rm -f *.o printNumbers printNumbersOMP
