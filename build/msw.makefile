#==============================================================================
# ■ lodepng - msw.makefile
#------------------------------------------------------------------------------
#   Windoge
#==============================================================================

TARGET = lodepng.dll
SOURCES = lodepng.cpp

MAKE76_ROOT?=`pwd`
include $(MAKE76_ROOT)/inc.makefile
include $(MAKE76_ROOT)/routine.makefile

LDLIBS += -L../ASM76 -lASM76 $(shell type build\windows_libs.txt)
LDFLAGS += -shared -Wl,--export-all-symbols
CXXFLAGS += -I../lib/SOIL/include -I.. -I../ASM76 \
	$(shell type build\windows_flags.txt)
