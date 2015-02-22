TARGET = brcm_egl
CONFIG -= qt

INCLUDEPATH += $$QMAKE_INCDIR_EGL

for(p, QMAKE_LIBDIR_EGL) {
    exists($$p):LIBS += -L$$p
}

LIBS += $$QMAKE_LIBS_EGL
INCLUDEPATH += /usr/include/interface /usr/include/interface/vcos/pthreads
LIBS += -lEGL -lGLESv2 -lm -lbcm_host
# Input
SOURCES += main.cpp
