BIN_DIR=../bin
PROGRAM1=$(BIN_DIR)/mergesort-co
PROGRAM2=$(BIN_DIR)/oldmergesort-co

CC=g++
CFLAGS=-O3 -fopenmp
LDFLAGS=-fopenmp

all: $(PROGRAM1) $(PROGRAM2)

$(PROGRAM1): mergesort.cpp
	$(CC) $(CFLAGS) $(VERBOSE) -o $@ $^ $(LDFLAGS)

$(PROGRAM2): oldmergesort.cpp
	$(CC) $(CFLAGS) $(VERBOSE) -o $@ $^ $(LDFLAGS)

$(BIN_DIR): 
	mkdir $@

clean:
	rm -rf $(PROGRAM) *.o

wipe: clean
	rm -rf *.out *.err
