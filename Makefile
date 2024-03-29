#############################################################################
# Makefile for building: qpowertop
# Generated by qmake (2.01a) (Qt 4.5.3) on: Wed Dec 2 01:04:34 2009
# Project:  qpowertop.pro
# Template: app
# Command: /usr/bin/qmake-qt4 -unix -o Makefile qpowertop.pro
#############################################################################

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = -DQT_NO_DEBUG -DQT_GUI_LIB -DQT_CORE_LIB
CFLAGS        = -pipe -O2 -g -pipe -Wall -Wp,-D_FORTIFY_SOURCE=2 -fstack-protector --param=ssp-buffer-size=4 -m32 -march=i686 -mtune=atom -fasynchronous-unwind-tables -Wall -W -D_REENTRANT $(DEFINES)
CXXFLAGS      = -pipe -O2 -g -pipe -Wall -Wp,-D_FORTIFY_SOURCE=2 -fstack-protector --param=ssp-buffer-size=4 -m32 -march=i686 -mtune=atom -fasynchronous-unwind-tables -Wall -W -D_REENTRANT $(DEFINES)
INCPATH       = -I/usr/lib/qt4/mkspecs/linux-g++ -I. -I/usr/include/QtCore -I/usr/include/QtGui -I/usr/include -I. -I. -I.
LINK          = g++
LFLAGS        = -Wl,-O1
LIBS          = $(SUBLIBS)   -lQtGui -lQtCore -lpthread
AR            = ar cqs
RANLIB        = 
QMAKE         = /usr/bin/qmake-qt4
TAR           = tar -cf
COMPRESS      = gzip -9f
COPY          = cp -f
SED           = sed
COPY_FILE     = $(COPY)
COPY_DIR      = $(COPY) -r
INSTALL_FILE  = install -m 644 -p
INSTALL_DIR   = $(COPY_DIR)
INSTALL_PROGRAM = install -m 755 -p
DEL_FILE      = rm -f
SYMLINK       = ln -sf
DEL_DIR       = rmdir
MOVE          = mv -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p

####### Output directory

OBJECTS_DIR   = ./

####### Files

SOURCES       = bluetooth.cpp \
		config.cpp \
		cpufreq.cpp \
		cpufreqstats.cpp \
		display.cpp \
		ethernet.cpp \
		intelcstates.cpp \
		main.cpp \
		mainwindow.cpp \
		misctips.cpp \
		powertop.cpp \
		process.cpp \
		sata.cpp \
		suggestions.cpp \
		urbnum.cpp \
		usb.cpp \
		wireless.cpp \
		xrandr.cpp moc_mainwindow.cpp
OBJECTS       = bluetooth.o \
		config.o \
		cpufreq.o \
		cpufreqstats.o \
		display.o \
		ethernet.o \
		intelcstates.o \
		main.o \
		mainwindow.o \
		misctips.o \
		powertop.o \
		process.o \
		sata.o \
		suggestions.o \
		urbnum.o \
		usb.o \
		wireless.o \
		xrandr.o \
		moc_mainwindow.o
DIST          = /usr/lib/qt4/mkspecs/common/g++-multilib.conf \
		/usr/lib/qt4/mkspecs/common/unix.conf \
		/usr/lib/qt4/mkspecs/common/linux.conf \
		/usr/lib/qt4/mkspecs/qconfig.pri \
		/usr/lib/qt4/mkspecs/features/qt_functions.prf \
		/usr/lib/qt4/mkspecs/features/qt_config.prf \
		/usr/lib/qt4/mkspecs/features/exclusive_builds.prf \
		/usr/lib/qt4/mkspecs/features/default_pre.prf \
		/usr/lib/qt4/mkspecs/features/release.prf \
		/usr/lib/qt4/mkspecs/features/default_post.prf \
		/usr/lib/qt4/mkspecs/features/warn_on.prf \
		/usr/lib/qt4/mkspecs/features/qt.prf \
		/usr/lib/qt4/mkspecs/features/unix/thread.prf \
		/usr/lib/qt4/mkspecs/features/moc.prf \
		/usr/lib/qt4/mkspecs/features/resources.prf \
		/usr/lib/qt4/mkspecs/features/uic.prf \
		/usr/lib/qt4/mkspecs/features/yacc.prf \
		/usr/lib/qt4/mkspecs/features/lex.prf \
		/usr/lib/qt4/mkspecs/features/include_source_dir.prf \
		qpowertop.pro
QMAKE_TARGET  = qpowertop
DESTDIR       = 
TARGET        = qpowertop

first: all
####### Implicit rules

.SUFFIXES: .o .c .cpp .cc .cxx .C

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.C.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o "$@" "$<"

####### Build rules

all: Makefile $(TARGET)

$(TARGET): ui_mainwindow.h $(OBJECTS)  
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)

Makefile: qpowertop.pro  /usr/lib/qt4/mkspecs/linux-g++/qmake.conf /usr/lib/qt4/mkspecs/common/g++-multilib.conf \
		/usr/lib/qt4/mkspecs/common/unix.conf \
		/usr/lib/qt4/mkspecs/common/linux.conf \
		/usr/lib/qt4/mkspecs/qconfig.pri \
		/usr/lib/qt4/mkspecs/features/qt_functions.prf \
		/usr/lib/qt4/mkspecs/features/qt_config.prf \
		/usr/lib/qt4/mkspecs/features/exclusive_builds.prf \
		/usr/lib/qt4/mkspecs/features/default_pre.prf \
		/usr/lib/qt4/mkspecs/features/release.prf \
		/usr/lib/qt4/mkspecs/features/default_post.prf \
		/usr/lib/qt4/mkspecs/features/warn_on.prf \
		/usr/lib/qt4/mkspecs/features/qt.prf \
		/usr/lib/qt4/mkspecs/features/unix/thread.prf \
		/usr/lib/qt4/mkspecs/features/moc.prf \
		/usr/lib/qt4/mkspecs/features/resources.prf \
		/usr/lib/qt4/mkspecs/features/uic.prf \
		/usr/lib/qt4/mkspecs/features/yacc.prf \
		/usr/lib/qt4/mkspecs/features/lex.prf \
		/usr/lib/qt4/mkspecs/features/include_source_dir.prf
	$(QMAKE) -unix -o Makefile qpowertop.pro
/usr/lib/qt4/mkspecs/common/g++-multilib.conf:
/usr/lib/qt4/mkspecs/common/unix.conf:
/usr/lib/qt4/mkspecs/common/linux.conf:
/usr/lib/qt4/mkspecs/qconfig.pri:
/usr/lib/qt4/mkspecs/features/qt_functions.prf:
/usr/lib/qt4/mkspecs/features/qt_config.prf:
/usr/lib/qt4/mkspecs/features/exclusive_builds.prf:
/usr/lib/qt4/mkspecs/features/default_pre.prf:
/usr/lib/qt4/mkspecs/features/release.prf:
/usr/lib/qt4/mkspecs/features/default_post.prf:
/usr/lib/qt4/mkspecs/features/warn_on.prf:
/usr/lib/qt4/mkspecs/features/qt.prf:
/usr/lib/qt4/mkspecs/features/unix/thread.prf:
/usr/lib/qt4/mkspecs/features/moc.prf:
/usr/lib/qt4/mkspecs/features/resources.prf:
/usr/lib/qt4/mkspecs/features/uic.prf:
/usr/lib/qt4/mkspecs/features/yacc.prf:
/usr/lib/qt4/mkspecs/features/lex.prf:
/usr/lib/qt4/mkspecs/features/include_source_dir.prf:
qmake:  FORCE
	@$(QMAKE) -unix -o Makefile qpowertop.pro

dist: 
	@$(CHK_DIR_EXISTS) .tmp/qpowertop1.0.0 || $(MKDIR) .tmp/qpowertop1.0.0 
	$(COPY_FILE) --parents $(SOURCES) $(DIST) .tmp/qpowertop1.0.0/ && $(COPY_FILE) --parents mainwindow.h powertop.h .tmp/qpowertop1.0.0/ && $(COPY_FILE) --parents bluetooth.cpp config.cpp cpufreq.cpp cpufreqstats.cpp display.cpp ethernet.cpp intelcstates.cpp main.cpp mainwindow.cpp misctips.cpp powertop.cpp process.cpp sata.cpp suggestions.cpp urbnum.cpp usb.cpp wireless.cpp xrandr.cpp .tmp/qpowertop1.0.0/ && $(COPY_FILE) --parents mainwindow.ui .tmp/qpowertop1.0.0/ && (cd `dirname .tmp/qpowertop1.0.0` && $(TAR) qpowertop1.0.0.tar qpowertop1.0.0 && $(COMPRESS) qpowertop1.0.0.tar) && $(MOVE) `dirname .tmp/qpowertop1.0.0`/qpowertop1.0.0.tar.gz . && $(DEL_FILE) -r .tmp/qpowertop1.0.0


clean:compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


####### Sub-libraries

distclean: clean
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) Makefile


mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

compiler_moc_header_make_all: moc_mainwindow.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) moc_mainwindow.cpp
moc_mainwindow.cpp: mainwindow.h
	/usr/lib/qt4/bin/moc $(DEFINES) $(INCPATH) mainwindow.h -o moc_mainwindow.cpp

compiler_rcc_make_all:
compiler_rcc_clean:
compiler_image_collection_make_all: qmake_image_collection.cpp
compiler_image_collection_clean:
	-$(DEL_FILE) qmake_image_collection.cpp
compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_uic_make_all: ui_mainwindow.h
compiler_uic_clean:
	-$(DEL_FILE) ui_mainwindow.h
ui_mainwindow.h: mainwindow.ui
	/usr/lib/qt4/bin/uic mainwindow.ui -o ui_mainwindow.h

compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_moc_header_clean compiler_uic_clean 

####### Compile

bluetooth.o: bluetooth.cpp powertop.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o bluetooth.o bluetooth.cpp

config.o: config.cpp powertop.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o config.o config.cpp

cpufreq.o: cpufreq.cpp powertop.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o cpufreq.o cpufreq.cpp

cpufreqstats.o: cpufreqstats.cpp powertop.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o cpufreqstats.o cpufreqstats.cpp

display.o: display.cpp powertop.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o display.o display.cpp

ethernet.o: ethernet.cpp powertop.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o ethernet.o ethernet.cpp

intelcstates.o: intelcstates.cpp powertop.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o intelcstates.o intelcstates.cpp

main.o: main.cpp mainwindow.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o main.o main.cpp

mainwindow.o: mainwindow.cpp mainwindow.h \
		ui_mainwindow.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o mainwindow.o mainwindow.cpp

misctips.o: misctips.cpp powertop.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o misctips.o misctips.cpp

powertop.o: powertop.cpp powertop.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o powertop.o powertop.cpp

process.o: process.cpp powertop.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o process.o process.cpp

sata.o: sata.cpp powertop.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o sata.o sata.cpp

suggestions.o: suggestions.cpp powertop.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o suggestions.o suggestions.cpp

urbnum.o: urbnum.cpp powertop.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o urbnum.o urbnum.cpp

usb.o: usb.cpp powertop.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o usb.o usb.cpp

wireless.o: wireless.cpp powertop.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o wireless.o wireless.cpp

xrandr.o: xrandr.cpp powertop.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o xrandr.o xrandr.cpp

moc_mainwindow.o: moc_mainwindow.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_mainwindow.o moc_mainwindow.cpp

####### Install

install:   FORCE

uninstall:   FORCE

FORCE:

