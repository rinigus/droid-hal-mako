# Makefile for mkbootimg

SRCS+= mkbootimg.c

VPATH+= ../libmincrypt
SRCS+= rsa.c
SRCS+= sha.c
SRCS+= sha256.c

CPPFLAGS+= -I.
CPPFLAGS+= -I../include

#LIBS+=

OBJS=$(SRCS:.c=.o)

all: clean mkbootimg

mkbootimg: $(OBJS)
	$(CC) -o $@ $(LDFLAGS) $(OBJS) $(LIBS)

clean:
	rm -rf $(OBJS) mkbootimg

