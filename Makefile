CC = gcc
OPENCL_LIB_DIR = /opt/AMDAPP/lib/x86/
OPENCL_INCLUDE_DIR = /opt/AMDAPP/include/
CFLAGS = -Wall -Werror -O3 -I$(OPENCL_INCLUDE_DIR)
LDFLAGS = -lOpenCL -lrt -L$(OPENCL_LIB_DIR)

all: VectorAdd

VectorAdd: VectorAdd.o

clean:
	rm -f *.o *~ VectorAdd
