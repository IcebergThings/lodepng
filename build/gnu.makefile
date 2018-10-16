#==============================================================================
# ■ lodepng - gnu.makefile
#==============================================================================

TARGET = liblodepng.so
SOURCES = lodepng.cpp

# 这破include居然是根据cwd来的！
MAKE76_ROOT?=`pwd`
include $(MAKE76_ROOT)/inc.makefile
include $(MAKE76_ROOT)/routine.makefile

LDLIBS += -lstdc++
LDFLAGS += -shared
CXXFLAGS += -I.. -I. -fPIC
