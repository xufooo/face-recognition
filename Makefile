CFLAGS = `pkg-config --cflags opencv`
LIBS = `pkg-config --libs opencv`

facerec: facerec_image.cpp
	g++ -g $(CFLAGS) $(LIBS) -Wl,-rpath=.:/usr/local/lib -o $@ $<
