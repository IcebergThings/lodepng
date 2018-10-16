#==============================================================================
# ■ lodepng - mac.makefile
#------------------------------------------------------------------------------
#   Mac does not support that make.rb, in a strange way...
#==============================================================================

TARGET = liblodepng.dylib
SOURCES = lodepng.cpp

MAKE76_ROOT?=`pwd`
include $(MAKE76_ROOT)/inc.makefile
include $(MAKE76_ROOT)/routine.makefile

LDLIBS += /usr/local/lib/libSOIL.a \
	$(shell pkg-config --libs glfw3 glm glew portaudio-2.0 ogg vorbisfile)
LDFLAGS += -dynamiclib -framework OpenGL
CXXFLAGS += -I../lib/SOIL/include -I.. -I../ASM76 -c -fPIC \
	$(shell pkg-config --cflags glfw3 glm glew portaudio-2.0 vorbisfile)
