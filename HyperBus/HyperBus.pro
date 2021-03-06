QT += core
QT += gui
QT += network

DEFINES += HYPERBUS_LIBRARY
TEMPLATE = lib
DESTDIR= \
    ../build

TARGET = hyperbus
DEFINES += GUI_SUPPORT

HEADERS += \
    hyperbus_macros.h \
    hyperbus_global.h \ 
    htcpclient.h \
    htcpserver.h \
    hmsgtransporter.h \
    hyperbusglobals.h \
    hyperbusrecord.h \
    hyperbusreciever.h \
    hyperbusabstractserver.h \
    hyperbusserver.h \
    highway.h \
    hvariantconverterunit.h \
    hvariantconverter.h \
    hvariantconvertergeneraltypes.h \
    hsocketdata.h \
    hsmarttcpclient.h \
    hsmarttcpserver.h \
    hpidtools.h \
    hyperbus.h \
    hyperbustools.h

SOURCES += \
    htcpserver.cpp \
    htcpclient.cpp \
    hmsgtransporter.cpp \
    hyperbusglobals.cpp \
    hyperbusrecord.cpp \
    hyperbusreciever.cpp \
    hyperbusabstractserver.cpp \
    hyperbusserver.cpp \
    highway.cpp \
    hvariantconverterunit.cpp \
    hvariantconverter.cpp \
    hvariantconvertergeneraltypes.cpp \
    hsocketdata.cpp \
    hsmarttcpclient.cpp \
    hsmarttcpserver.cpp \
    hpidtools.cpp \
    hyperbustools.cpp

FRAMEWORKS_HEADERS += \
    HighWay \
    HMshTransporter \
    HPidTools \
    HSmartTcpClient \
    HSmartTcpServer \
    HSocketData \
    HTcpClient \
    HTcpServer \
    HVariantConverter \
    HVariantConverterGeneralTypes \
    HVariantConverterUnit \
    HyperBus \
    HyperBus_global \
    HyperBus_macros \
    HyperBusAbstractServer \
    HyperBusGlobals \
    HyperBusReciever \
    HyperBusRecord \
    HyperBusServer \
    HyperBusTools

headers.source = $$HEADERS
headers.target = $$DESTDIR/include/hyperbus
fwheaders.source = $$FRAMEWORKS_HEADERS
fwheaders.target = $$DESTDIR/include/hyperbus
COPYFOLDERS += headers fwheaders

include(qmake/copyData.pri)
copyData()

isEmpty(PREFIX) {
    PREFIX = /usr
}

contains(BUILD_MODE, opt):{
} else {
    contains(QMAKE_HOST.arch, x86_64):{
        LIBS_PATH = lib/x86_64-linux-gnu/
    } else {
        LIBS_PATH = lib/i386-linux-gnu/
    }
}

target = $$TARGET
target.path = $$PREFIX/$$LIBS_PATH
headers.files = $$HEADERS
headers.path = $$PREFIX/include/hyperbus
fwheaders.files = $$FRAMEWORKS_HEADERS
fwheaders.path = $$PREFIX/include/hyperbus

INSTALLS += target headers fwheaders
