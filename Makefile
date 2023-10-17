OMPFLAGS = -fopenmp
OMPLIBS = -lgomp

CC = gcc
CPPFLAGS = -g3 -Wall -Wextra $(OMPFLAGS)
LDFLAGS = -g3 -Wall -Wextra
LDLIBS = $(OMPLIBS)

all: printNumbers numThreads

printNumbers: printNumbers.o
	$(CC) $(LDFLAGS) -o $@ $^

numThreads: numThreads.o
	$(CC) $(LDFLAGS) -o $@ $^ $(LDLIBS)

clean:
	rm -f *.o printNumbers numThreads
