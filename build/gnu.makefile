#==============================================================================
# ■ lodepng - gnu.makefile
#==============================================================================

TARGET = liblodepng.so
SOURCES = lodepng.cpp

# 这破include居然是根据cwd来的！
include ../../inc.makefile
include ../../routine.makefile

LDLIBS += -lstdc++
LDFLAGS += -shared
CXXFLAGS += -I.. -I. -fPIC
