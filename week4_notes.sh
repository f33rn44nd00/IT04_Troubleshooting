#MANAGING COMPUTER RESOURCES

valgrind #used to profile memory leaks in C/C++

uxterm & #will show the buffer, it doesn't fill up under normal conditions
#we can cause it to be filled up however:
od -cx /dev/urandom #will create a list of random numbers and keep them in memory

#For Python, we have 'memory_profiler', among others:

<<py
from memory_profiler import profile
@profile #before main to trigger a profile in that part
def main(): #...
py

