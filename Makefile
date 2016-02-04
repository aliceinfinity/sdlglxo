
SYS := $(shell gcc -dumpmachine)
UNAME := $(shell uname)

ifneq (, $(findstring linux, $(SYS)))
    MACHINE=-DLINUX
    LIBS =	-lz -lGL -lSDL2 -lSDL2_image    # Do linux things
    INC = 
else
    MACHINE=-DWIN
#    LIBS = -lC:\Users\motey\Downloads\SDL2-devel-2.0.3-VC\SDL2-2.0.3\lib\x64\SDL2.lib -lSDL2 -lws2_32
    LIBS = -lSDL2main -lSDL2   -lSDL2_image -lopengl32 -lws2_32
    INC= -I\Users\motey\Downloads\SDL2-devel-2.0.3-VC\SDL2-2.0.3\include
endif
CC=g++
CFLAGS = -g 


PROJECT		=	Ants20116
PROJECTM	=	sdlmain


HOBJECTS := $(wildcard Headers/Ants2016*.h)
#COBJECTS := $(wildcard $(PROJECT)*.cpp)
#OOBJECTS := $(patsubst %.cpp,%.o,$(wildcard $(PROJECT)*.cpp))
OBJS = 
#""$(COBJECTS:.cpp=.o)

CC		=	g++ -std=c++0x -Wall -Werror -g

#Build is dependent on changes to makefile also
OBJECTS = 	$(OBJS)
DEPENDS	= 	$(HOBJECTS) Makefile 

.PHONY: all
all:  $(PROJECTM) 

$(PROJECTM):  $(PROJECTM).cpp $(DEPENDS)
	@echo $(MACHINE)
	@echo $(INC)
	@echo $(LIB)
	@echo $(SYS)
	 
	$(CC) $(MACHINE) $(INCLUDES) $(PROJECTM).cpp $(INC) $(LIBS) -o $(PROJECTM) $(OBJECTS) 

