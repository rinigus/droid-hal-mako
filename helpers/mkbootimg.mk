# Makefile for mkbootimg

SRCS+= mkbootimg.c

VPATH+= ../libmincrypt
SRCS+= rsa.c
SRCS+= rsa_e_3.c
SRCS+= rsa_e_f4.c
SRCS+= sha.c

CPPFLAGS+= -I.
CPPFLAGS+= -I../include

#LIBS+=

OBJS=$(SRCS:.c=.o)

all: mkbootimg

mkbootimg: $(OBJS)
	$(CC) -o $@ $(LDFLAGS) $(OBJS) $(LIBS)

clean:
	rm -rf $(OBJS) mkbootimg

