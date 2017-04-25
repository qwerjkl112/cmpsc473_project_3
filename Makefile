#
# CMPSC473 - S17 Project #3
# Makefile - makefile for CMPSC463 project 3
#

# Locations

# Make environment
OBJS = virtualMemoryManagerInterface.o testbenchProject3.o
CXX = g++ 
CXXFLAGS = -std=c++11 -c -g -Wall
LFLAGS = -std=c++11 -Wall -g

# Productions
all : testbenchProject3

testbenchProject3 : $(OBJS)
	$(CXX) $(LFLAGS) $(OBJS) -o testbenchProject3

testbenchProject3.o : virtualMemoryManagerInterface.hpp testbenchProject3.cpp
	$(CXX) $(CXXFLAGS) testbenchProject3.cpp

virtualMemoryManagerInterface.o : virtualMemoryManagerInterface.hpp virtualMemoryManagerInterface.cpp
	$(CXX) $(CXXFLAGS) virtualMemoryManagerInterface.cpp

clean : 
	rm -f testbenchProject3 $(OBJS)