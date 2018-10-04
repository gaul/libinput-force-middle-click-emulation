all:
	cc -Wall -shared -ldl -linput -fPIC hook.c -o hook.so

clean:
	rm -f *.o *.so
