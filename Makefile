INCLUDE+=-I/usr/local/include -I/usr/local/include/opencv -I/usr/local/include/opencv2

LINKING+=-L/usr/lib -Llib -lopencv_core -lopencv_highgui -lopencv_imgproc -lopencv_objdetect

CXX=g++

SRC=main.cpp main.h frames.cpp frames.h haar_cascade.cpp haar_cascade.h objectDetector.cpp objectDetector.h temporalPyramid.cpp temporalPyramid.h

EXE=FP_ADL.out

OPT=-O0

all:
	$(CXX) $(OPT) $(INCLUDE) $(LINKING) $(SRC) -o $(EXE)

clean:
	rm -f *.o *.a *.out


