
CXX = g++
CC = gcc

CXXFLAGS = -O3 -Wall -mrdrnd -I.
CFLAGS = -O3 -Wall -mrdrnd -I.

LDFLAGS = -lssl -lcrypto

CPP_SOURCES = $(wildcard *.cpp)
C_SOURCES = $(wildcard *.c)

CPP_OBJECTS = $(CPP_SOURCES:.cpp=.o)
C_OBJECTS = $(C_SOURCES:.c=.o)
OBJECTS = $(CPP_OBJECTS) $(C_OBJECTS)

TARGET = Mnemonic_C++

all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(CXX) $(OBJECTS) -o $@ $(LDFLAGS)

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@ $(LDFLAGS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@


clean:
	rm -f $(OBJECTS)

.PHONY: all clean
