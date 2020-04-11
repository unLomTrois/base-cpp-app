CXX = g++

#name of your game
TARGET_PATH = ./bin/
TARGET_NAME = BASE-CPP-APP
TARGET = $(TARGET_PATH)$(TARGET_NAME).exe

SRCS = $(wildcard src/*.cpp) $(wildcard src/*/*.cpp)
OBJS = $(SRCS:.cpp=.o)

#options
OPTIMIZATION = -O0
DEBUG_MODE = -g
STANDARD = -std=c++17
WARNINGS = -Wall -Wextra
CXXFLAGS = $(STANDARD) $(WARNINGS) $(OPTIMIZATION) $(DEBUG_MODE)

LIB_FLAGS = 

INC = -I ./include
ALL_INC = $(INC)


.PHONY: all clean

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CXX) $(OBJS) -o $@ $(LIB_FLAGS) $(SFML_LIB)
.cpp.o:
	$(CXX) -c $< -o $@ $(ALL_INC) $(CXXFLAGS)

clean:
	rm -rf $(OBJS)