CC=gcc
CFLAGS= -g -Wall 

all: proxy

proxy: proxyserver.c
	$(CC) $(CFLAGS) -o proxy_parse.o -c proxy_parse.c -lpthread
	$(CC) $(CFLAGS) -o proxy.o -c proxyserver.c -lpthread
	$(CC) $(CFLAGS) -o proxy proxy_parse.o proxy.o -lpthread

clean:
	rm -f proxy *.o

tar:
	tar -cvzf ass1.tgz proxyserver.c README Makefile proxy_parse.c proxy_parse.h

	