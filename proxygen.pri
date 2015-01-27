#
# proxygen
#
INCLUDEPATH += $${PWD}

LIBS += $${PWD}/proxygen/httpserver/.libs/libproxygenhttpserver.a
LIBS += $${PWD}/proxygen/lib/.libs/libproxygenlib.a

#
# fbthrift
#
include(proxygen/fbthrift/fbthrift.pri)

#
# another libraries
#
LIBS += -lboost_thread
LIBS += -lboost_system
LIBS += -lssl -lcrypto
LIBS += -lz
LIBS += -ldouble-conversion
