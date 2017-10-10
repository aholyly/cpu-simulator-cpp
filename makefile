all: hw4

hw4: _mainTester.o CPUProgram.o CPU.o Memory.o Computer.o
	g++ _mainTester.o CPUProgram.o CPU.o Memory.o Computer.o -o exe

_mainTester.o: _mainTester.cpp
	g++ -c -std=c++11 _mainTester.cpp

CPUProgram.o: CPUProgram.cpp
	g++ -c -std=c++11 CPUProgram.cpp

CPU.o: CPU.cpp
	g++ -c -std=c++11 CPU.cpp

Memory.o: Memory.cpp
	g++ -c -std=c++11 Memory.cpp

Computer.o: Computer.cpp
	g++ -c -std=c++11 Computer.cpp

clean:
	rm *.o exe