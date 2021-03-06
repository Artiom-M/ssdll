#-------------------------------------------------
#
# Project created by QtCreator 2017-01-04T20:43:22
#
#-------------------------------------------------

TARGET = ssdll
TEMPLATE = lib
CONFIG += c++11
CONFIG -= app_bundle
CONFIG -= qt

DEFINES += SSDLL_LIBRARY
DEFINES += "_FILE_OFFSET_BITS=64"

SOURCES += lookupdictionary.cpp \
    dictionarymetadata.cpp \
    dictziplib.cpp \
    utils.cpp \
    worddata.cpp \
    indexfile.cpp \
    mapfile.cpp \
    basicdictionary.cpp \
    dictionaryprivate.cpp

HEADERS += lookupdictionary.h\
        ssdll_global.h \
    dictionarymetadata.h \
    dictziplib.hpp \
    mapfile.hpp \
    utils.h \
    worddata.h \
    indexfile.h \
    basicdictionary.h \
    dictionaryprivate.h

INCLUDEPATH += ../

win32 {
    DEFINES += ZLIB_WINAPI \
               ZLIB_DLL
    LIBS += -L"$$PWD/../libs/"
    INCLUDEPATH += ../zlib-1.2.11/
    LIBS += -lz
    LIBS += -lmman
    LIBS += -lWs2_32
}

appveyor {
    INCLUDEPATH += ../../../zlib-1.2.11/
    LIBS += -L"$$PWD/../../../libs/"
}

unix {
    LIBS += -lz
}

unix {
    target.path = /usr/lib
    INSTALLS += target
}
