#-------------------------------------------------
#
# Project created by QtCreator 2015-02-06T16:32:10
#
#-------------------------------------------------

QT       -= core gui
TARGET = httpserver_tests
CONFIG   += console
CONFIG   -= app_bundle
TEMPLATE = app

include(/root/proj/fb/proxygen/proxygen.pri)
LIBS += -lgtest -lgtest_main

SOURCES += \
    HTTPServerTest.cpp
