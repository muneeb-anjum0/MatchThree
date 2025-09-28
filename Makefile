
# Makefile for Match3 (Windows, MinGW, SFML)

TARGET = game-normal.exe
OBJS = main.o
INCLUDE = -IC:/SFML-built/include
LIBS = -LC:/SFML-built/lib -lsfml-graphics -lsfml-audio -lsfml-window -lsfml-system -static-libgcc -static-libstdc++

all: $(TARGET)

$(TARGET): $(OBJS)
	g++ $(OBJS) -o $(TARGET) $(LIBS)

main.o: main.cpp dependencies.h
	g++ $(INCLUDE) -c main.cpp

run: $(TARGET)
	$(TARGET)

clean:
	del /Q *.o *.exe 2>nul || exit 0
	