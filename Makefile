FLAGS=-lGL -lglfw -ldl -std=c++11

all: game

game: main.o dont-touch.o bricks.o glad.c
	g++ -o game main.o dont-touch.o bricks.o glad.c $(FLAGS)

main.o: main.cpp glad.c
	g++ -c main.cpp glad.c $(FLAGS)

dont-touch.o: dont-touch.cpp glad.c
	g++ -c dont-touch.cpp glad.c $(FLAGS)

bricks.o: bricks.cpp glad.c
	g++ -c bricks.cpp glad.c $(FLAGS)

clean:
	rm *.o game
