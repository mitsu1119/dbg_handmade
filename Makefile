DST = ./dst
INCLUDE = ./include
SRC = ./src
OBJS = $(DST)/main.o $(DST)/process.o
CFLAGS = -c -Wall -std=c++17

.PHONY: all
all: dbg

dbg: $(INCLUDE) $(OBJS) $(DST)
	g++ $(OBJS) -o ./dbg

$(DST)/%.o: $(SRC)/%.cpp $(DST)
	g++ $(CFLAGS) $(SRC)/$*.cpp -I $(INCLUDE) -o $(DST)/$*.o

$(DST):
	mkdir -p $(DST)

clean:
	rm -rf $(DST)
	rm ./dbg
