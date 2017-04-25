////////////////////////////////////////////////////////////////////////////////
//
//  File           : testbenchProject3.cpp
//  Description    : test bench for virtual memory manager interface
//
//  Author         : Jeff Li, Frank Guo, Chen Dikan
//  Last Modified  : 04/28/2017

#include "myVirtualMemoryManagerInterface.h"

int main() 
{
	myVirtualMemoryManagerInterface test_FIFO(FIFO, 2, 2, 16);
	myVirtualMemoryManagerInterface test_LRU(LRU, 2, 2, 16);

	test_FIFO.memoryAccess(0);

	
	return 0;
}