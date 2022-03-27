CFLAGS = -Wall -Wextra -Werror 

CC = g++

all: geometry test

geometry: bin/geometry

bin/geometry: obj/src/geometry/main.o obj/src/statlib/statlib.a
	                $(CC) $(CFLAGS) -o $@ $^ -lm

obj/src/geometry/main.o: src/geometry/main.cpp
	                $(CC) -c -I src $(CFLAGS) -o $@ $< -lm
obj/src/statlib/statlib.a: obj/src/statlib/check.o obj/src/statlib/orobraj.o obj/src/statlib/SP.o
	                ar rcs $@ $^
obj/src/statlib/Check.o: src/statlib/Check.cpp
	                $(CC) -c -I src $(CFLAGS) -o $@ $< -lm
obj/src/statlib/otobraj.o: src/statlib/otobraj.cpp
	                $(CC) -c -I src $(CFLAGS) -o $@ $< -lm
obj/src/statlib/SP.o: src/statlib/SP.cpp
	                $(CC) -c -I src $(CFLAGS) -o $@ $< -lm

