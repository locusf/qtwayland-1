TARGET = brcm_egl
CONFIG -= qt

INCLUDEPATH += $$QMAKE_INCDIR_EGL
INCLUDEPATH += $$QMAKE_INCDIR_EGL /usr/include/interface /usr/include/interface/vcos/pthreads

for(p, QMAKE_LIBDIR_EGL) {
    exists($$p):LIBS += -L$$p
}

LIBS += $$QMAKE_LIBS_EGL
LIBS += $$QMAKE_LIBS_EGL -lGLESv2 -lm -lbcm_host

# Input
SOURCES += main.cpp
