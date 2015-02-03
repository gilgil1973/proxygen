#-------------------------------------------------
#
# Project created by QtCreator 2015-02-03T17:19:07
#
#-------------------------------------------------

QT       += core
QT       -= gui

QMAKE_CXXFLAGS += -std=c++11

include(/root/proj/fb/proxygen/proxygen.pri)
include(/root/proj/google/glog/glog.pri)
include(/root/proj/google/gflags/gflags.pri)

LIBS += -lglog -lgflags -lgflags_nothreads

TARGET = samples_echo
CONFIG   += console
CONFIG   -= app_bundle

TEMPLATE = app


SOURCES += \
    EchoHandler.cpp \
    EchoServer.cpp

HEADERS += \
    EchoHandler.h \
    EchoStats.h
