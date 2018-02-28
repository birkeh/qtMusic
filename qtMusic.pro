#-------------------------------------------------
#
# Project created by QtCreator 2018-02-20T08:20:32
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = qtMusic
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


SOURCES += \
        main.cpp \
        cmainwindow.cpp \
    cmediainfo.cpp \
    libid3tag/compat.c \
    libid3tag/crc.c \
    libid3tag/debug.c \
    libid3tag/field.c \
    libid3tag/file.c \
    libid3tag/frame.c \
    libid3tag/frametype.c \
    libid3tag/genre.c \
    libid3tag/latin1.c \
    libid3tag/parse.c \
    libid3tag/render.c \
    libid3tag/tag.c \
    libid3tag/ucs4.c \
    libid3tag/utf8.c \
    libid3tag/utf16.c \
    libid3tag/util.c \
    libid3tag/version.c \
    cid3field.cpp \
    cPicture.cpp \
    libmpg123/common.c \
    libmpg123/dxhead.c \
    libmpg123/getbits.c \
    libmpg123/layer1.c \
    libmpg123/layer2.c \
    libmpg123/layer3.c \
    libmpg123/mpg123.c

HEADERS += \
        cmainwindow.h \
    cmediainfo.h \
    libid3tag/compat.h \
    libid3tag/crc.h \
    libid3tag/debug.h \
    libid3tag/field.h \
    libid3tag/file.h \
    libid3tag/frame.h \
    libid3tag/frametype.h \
    libid3tag/genre.h \
    libid3tag/global.h \
    libid3tag/id3tag.h \
    libid3tag/latin1.h \
    libid3tag/parse.h \
    libid3tag/render.h \
    libid3tag/tag.h \
    libid3tag/ucs4.h \
    libid3tag/utf8.h \
    libid3tag/utf16.h \
    libid3tag/util.h \
    libid3tag/version.h \
    cid3field.h \
    cpicture.h \
    fields.h \
    libmpg123/dxhead.h \
    libmpg123/getbits.h \
    libmpg123/huffman.h \
    libmpg123/l2tables.h \
    libmpg123/mpg123.h

LIBS += -lz

FORMS += \
        cmainwindow.ui

DISTFILES += \
    libid3tag/genre.dat
