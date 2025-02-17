all: bin build

bin:
		mkdir bin

build:
		gcc demo.c -c `sdl2-config --libs --cflags` -lm -o bin/demo.o
		gcc nes_ntsc.c -c `sdl2-config --libs --cflags` -lm -o bin/nes_ntsc.o
		gcc bin/demo.o bin/nes_ntsc.o `sdl2-config --libs --cflags` -lm -o bin/prog.x86_64
