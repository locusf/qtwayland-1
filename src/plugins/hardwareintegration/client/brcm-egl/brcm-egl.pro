PLUGIN_TYPE = wayland-graphics-integration-client
load(qt_plugin)

QT += waylandclient-private

include(../../../../hardwareintegration/client/brcm-egl/brcm-egl.pri)
INCLUDEPATH += /usr/include/interface /usr/include/interface/vcos/pthreads
LIBS += -lEGL -lGLESv2 -lm -lbcm_host

LIBS += -lEGL

OTHER_FILES += \
    brcm-egl.json

SOURCES += main.cpp

