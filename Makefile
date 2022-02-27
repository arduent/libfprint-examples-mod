all: scanner

scanner:
	gcc -Wall -g img-capture.c storage.c utilities.c `pkg-config --libs --cflags glib-2.0` `pkg-config --libs --cflags gio-2.0` `pkg-config --libs --cflags gobject-2.0` -I./ -I/usr/include -L/usr/lib/x86_64-linux-gnu -lfprint-2 -o capture

clean:
	rm -f *.core
	rm -f capture

