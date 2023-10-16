CC=gcc
CFLAGS = -Wall -Wextra -g3
LDFLAGS = -Wall -Wextra -g3
OMPFLAGS = -fopenmp
OMPLIBS = -lgomp
LDLIBS = $(OMPLIBS)

printNumbers:
	${CC} ${CFLAGS} printNumbers.c -o $@

printNumbersOMP:
	${CC} ${CFLAGS} printNumbersOMP.c -o $@

clean:
	rm -f printNumbers printNumbersOMP
