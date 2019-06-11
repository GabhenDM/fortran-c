CC = icc
FC = ifort
FCFLAGS = -O3 -xHost -fno-alias $(INCLUDES)
CFLAGS = -O3 -xHost -fno-alias $(INCLUDES)
LIBS =
INCLUDES =
TARGET = run
OBJS = testF.o testC.o

$(TARGET) : $(OBJS)
	$(FC) -o $(TARGET) $(OBJS)
testC.o: testC.c  
	$(CC) -c $(CFLAGS) testC.c
testF.o: testF.f 
	$(FC) -c $(FCFLAGS) testF.f
.PHONY : clean
clean:
	rm -f *.o