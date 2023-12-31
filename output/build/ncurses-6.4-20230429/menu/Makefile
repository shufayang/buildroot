# $Id: Makefile.in,v 1.71 2021/07/03 15:45:33 tom Exp $
##############################################################################
# Copyright 2020,2021 Thomas E. Dickey                                       #
# Copyright 1998-2015,2018 Free Software Foundation, Inc.                    #
#                                                                            #
# Permission is hereby granted, free of charge, to any person obtaining a    #
# copy of this software and associated documentation files (the "Software"), #
# to deal in the Software without restriction, including without limitation  #
# the rights to use, copy, modify, merge, publish, distribute, distribute    #
# with modifications, sublicense, and/or sell copies of the Software, and to #
# permit persons to whom the Software is furnished to do so, subject to the  #
# following conditions:                                                      #
#                                                                            #
# The above copyright notice and this permission notice shall be included in #
# all copies or substantial portions of the Software.                        #
#                                                                            #
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR #
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,   #
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL    #
# THE ABOVE COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER      #
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING    #
# FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER        #
# DEALINGS IN THE SOFTWARE.                                                  #
#                                                                            #
# Except as contained in this notice, the name(s) of the above copyright     #
# holders shall not be used in advertising or otherwise to promote the sale, #
# use or other dealings in this Software without prior written               #
# authorization.                                                             #
##############################################################################
#
# Author: Thomas E. Dickey 1996-on
#
# Makefile for menu source code.
#
# This makes the following:
#	libraries (normal/debug/profile/shared)
#
# The variable 'srcdir' refers to the source-distribution, and can be set with
# the configure script by "--srcdir=DIR".
#
# The rules are organized to produce the libraries for the configured models,

# turn off _all_ suffix rules; we'll generate our own
.SUFFIXES:

SHELL		= /bin/bash

THIS		= Makefile

x		= 
o		= .o

MODEL		= shared
DESTDIR		= 
top_srcdir	= ..
srcdir		= .
prefix		= /usr
exec_prefix	= /usr
bindir		= ${exec_prefix}/bin
libdir		= ${exec_prefix}/lib
includedir	= ${prefix}/include
includesubdir	= 

INCLUDEDIR	= $(DESTDIR)$(includedir)$(includesubdir)

PACKAGE		= ncurses

LIBTOOL		= 
LIBTOOL_OPTS	=  
LIBTOOL_CLEAN	= 
LIBTOOL_COMPILE	= 
LIBTOOL_LINK	= ${CC}
LIBTOOL_INSTALL	= 
LIBTOOL_UNINSTALL = 
LT_UNDEF	= 

INSTALL		= /usr/bin/install -c
INSTALL_LIB	= /usr/bin/install -c -m 644
INSTALL_PROG	= ${INSTALL} 
INSTALL_DATA	= ${INSTALL} -m 644

AR		= /home/jee/linux/armv7/ll/buildroot/output/host/bin/arm-linux-gnueabihf-gcc-ar
ARFLAGS		= -curvU
AWK		= mawk
LD		= /home/jee/linux/armv7/ll/buildroot/output/host/bin/arm-linux-gnueabihf-ld
LN_S		= ln -s -f

CTAGS		= 
ETAGS		= 

CC		= /home/jee/linux/armv7/ll/buildroot/output/host/bin/arm-linux-gnueabihf-gcc
CPP		= /home/jee/linux/armv7/ll/buildroot/output/host/bin/arm-linux-gnueabihf-cpp
CFLAGS		= -Os -g0 --param max-inline-insns-single=1200 

INCDIR		= $(top_srcdir)/include
BASE_DIR 	= $(top_srcdir)/ncurses
CPPFLAGS	= -I$(BASE_DIR) -DHAVE_CONFIG_H -DBUILDING_MENU -I. -I../include    -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D_FORTIFY_SOURCE=1 -D_DEFAULT_SOURCE -D_XOPEN_SOURCE=600 -DNDEBUG

CCFLAGS		= $(CPPFLAGS) $(CFLAGS)

CFLAGS_LIBTOOL	= $(CCFLAGS)
CFLAGS_NORMAL	= $(CCFLAGS) -DNCURSES_STATIC
CFLAGS_DEBUG	= $(CCFLAGS) -DNCURSES_STATIC -g -DTRACE
CFLAGS_PROFILE	= $(CCFLAGS) -DNCURSES_STATIC -pg
CFLAGS_SHARED	= $(CCFLAGS) -fPIC

CFLAGS_DEFAULT	= $(CFLAGS_SHARED)

LINK		= $(LIBTOOL_LINK)
LDFLAGS		=   

SHLIB_DIRS	= -L../lib
SHLIB_LIST	= $(SHLIB_DIRS) -lncurses 

RPATH_LIST	= ${libdir}
RESULTING_SYMS	= 
VERSIONED_SYMS	= 
MK_SHARED_LIB	= ${CC} ${LDFLAGS} ${CFLAGS} -shared -Wl,-soname,`basename $@ .${REL_VERSION}`.${ABI_VERSION},-stats,-lc -o $@

NCURSES_MAJOR	= 6
NCURSES_MINOR	= 4
REL_VERSION	= 6.4
ABI_VERSION	= 6

RANLIB		= /home/jee/linux/armv7/ll/buildroot/output/host/bin/arm-linux-gnueabihf-gcc-ranlib

LIBRARIES	=  ../lib/libmenu.so.${REL_VERSION}

LINT		= 
LINT_OPTS	= 
LINT_LIBS	= -lmenu -lncurses 

AUTO_SRC	= \
		../include/menu.h \
		../include/eti.h \
		../include/mf_common.h

################################################################################

.PHONY :	all
.PHONY :	clean
.PHONY :	distclean
.PHONY :	install
.PHONY :	install.libs
.PHONY :	libs
.PHONY :	mostlyclean
.PHONY :	realclean
.PHONY :	sources
.PHONY :	uninstall
.PHONY :	uninstall.libs

all \
libs \
install ::	$(AUTO_SRC) $(LIBRARIES)

sources :	$(AUTO_SRC)

$(DESTDIR)$(bindir) \
$(DESTDIR)$(libdir) :
	mkdir -p $@

# make copies to simplify include-paths while still keeping menu's include
# file in this directory.
../include/menu.h : $(srcdir)/menu.h
	-rm -f $@
	cp $(srcdir)/menu.h $@
../include/eti.h : $(srcdir)/eti.h
	-rm -f $@
	cp $(srcdir)/eti.h $@
../include/mf_common.h : $(srcdir)/mf_common.h
	-rm -f $@
	cp $(srcdir)/mf_common.h $@

HEADER_DEPS = \
	../include/curses.h \
	../include/ncurses_cfg.h \
	../include/ncurses_def.h \
	../include/ncurses_dll.h \
	../include/term.h \
	../include/unctrl.h \
	$(BASE_DIR)/curses.priv.h \
	$(BASE_DIR)/new_pair.h \
	$(INCDIR)/nc_alloc.h \
	$(INCDIR)/nc_panel.h \
	$(INCDIR)/nc_string.h \
	$(INCDIR)/nc_termios.h \
	$(INCDIR)/nc_tparm.h \
	$(INCDIR)/term_entry.h \
	$(srcdir)/menu.priv.h \
	$(AUTO_SRC)

tags:
	$(CTAGS) *.[ch]

#TAGS:
#	$(ETAGS) *.[ch]

mostlyclean ::
	-rm -f core tags TAGS *~ *.bak *.i *.ln *.atac trace

clean :: mostlyclean
	-rm -f $(AUTO_SRC)
	-rm -rf .libs *.dSYM

distclean :: clean
	-rm -f Makefile

realclean :: distclean

###############################################################################
# The remainder of this file is automatically generated during configuration
###############################################################################

# Generated by CF_LIB_RULES
resulting.map: 
	mawk 'BEGIN { skip = 1; last=""; } /deprecated in ABI6/ { next; }{ sub("NCURSES([WT]+)?", "&6"); } { if ( last != "" && ( skip == 0 || $$0 !~ /}/ ) ) { print last; } skip = 0; last = $$0; } END { print last; }' < "" >$@

distclean::
	rm -f resulting.map

# generated by mk-0th.awk
#   libname:    menu
#   subsets:    termlib+ext_tinfo+base+ext_funcs

.SUFFIXES: .c .cc .h .i .ii
.c.i :
	$(CPP) $(CPPFLAGS) $< >$@
.cc.ii :
	$(CPP) $(CPPFLAGS) $< >$@
.h.i :
	$(CPP) $(CPPFLAGS) $< >$@

C_SRC = \
	$(srcdir)/m_attribs.c \
	$(srcdir)/m_cursor.c \
	$(srcdir)/m_driver.c \
	$(srcdir)/m_format.c \
	$(srcdir)/m_global.c \
	$(srcdir)/m_hook.c \
	$(srcdir)/m_item_cur.c \
	$(srcdir)/m_item_nam.c \
	$(srcdir)/m_item_new.c \
	$(srcdir)/m_item_opt.c \
	$(srcdir)/m_item_top.c \
	$(srcdir)/m_item_use.c \
	$(srcdir)/m_item_val.c \
	$(srcdir)/m_item_vis.c \
	$(srcdir)/m_items.c \
	$(srcdir)/m_new.c \
	$(srcdir)/m_opts.c \
	$(srcdir)/m_pad.c \
	$(srcdir)/m_pattern.c \
	$(srcdir)/m_post.c \
	$(srcdir)/m_req_name.c \
	$(srcdir)/m_scale.c \
	$(srcdir)/m_spacing.c \
	$(srcdir)/m_sub.c \
	$(srcdir)/m_trace.c \
	$(srcdir)/m_userptr.c \
	$(srcdir)/m_win.c

# Producing llib-lmenu is time-consuming, so there's no direct-dependency for
# it in the lintlib rule.  We'll only remove in the cleanest setup.

MENU_SRC = \
	$(srcdir)/m_attribs.c \
	$(srcdir)/m_cursor.c \
	$(srcdir)/m_driver.c \
	$(srcdir)/m_format.c \
	$(srcdir)/m_global.c \
	$(srcdir)/m_hook.c \
	$(srcdir)/m_item_cur.c \
	$(srcdir)/m_item_nam.c \
	$(srcdir)/m_item_new.c \
	$(srcdir)/m_item_opt.c \
	$(srcdir)/m_item_top.c \
	$(srcdir)/m_item_use.c \
	$(srcdir)/m_item_val.c \
	$(srcdir)/m_item_vis.c \
	$(srcdir)/m_items.c \
	$(srcdir)/m_new.c \
	$(srcdir)/m_opts.c \
	$(srcdir)/m_pad.c \
	$(srcdir)/m_pattern.c \
	$(srcdir)/m_post.c \
	$(srcdir)/m_req_name.c \
	$(srcdir)/m_scale.c \
	$(srcdir)/m_spacing.c \
	$(srcdir)/m_sub.c \
	$(srcdir)/m_trace.c \
	$(srcdir)/m_userptr.c \
	$(srcdir)/m_win.c

clean ::
	rm -f llib-lmenu.*

realclean ::
	rm -f llib-lmenu

llib-lmenu : $(MENU_SRC)
	cproto -a -l -DNCURSES_ENABLE_STDBOOL_H=0 -DLINT $(CPPFLAGS) $(MENU_SRC) >$@

lintlib ::
	sh $(srcdir)/../misc/makellib menu $(CPPFLAGS)

lint ::
	$(LINT) $(LINT_OPTS) $(CPPFLAGS) $(MENU_SRC) $(LINT_LIBS)

# generated by mk-1st.awk (subset=termlib+ext_tinfo+base+ext_funcs)
#  name:            menu
#  traces:          DEBUG
#  MODEL:           SHARED
#  CXX_MODEL:       SHARED
#  LIB_SUFFIX:      
#  USE_LIB_SUFFIX:  
#  model:           obj_s
#  prefix:          lib
#  suffix:          .so
#  subset:          termlib+ext_tinfo+base+ext_funcs
#  driver:          no
#  ShlibVer:        rel
#  ShlibVerInfix:   no
#  SymLink:         ln -s -f
#  TermlibRoot:     ncurses
#  TermlibSuffix:   .so
#  ReLink:          yes
#  ReRanlib:        yes
#  DoLinks:         yes
#  rmSoLocs:        no
#  ldconfig:        :
#  make_phony:      yes
#  overwrite:       yes
#  depend:          ../include/ncurses_cfg.h ./menu.priv.h
#  host:            arm-buildroot-linux-gnueabihf
#  libtool_version: -version-number

SHARED_OBJS = \
	../obj_s/m_attribs$o \
	../obj_s/m_cursor$o \
	../obj_s/m_driver$o \
	../obj_s/m_format$o \
	../obj_s/m_global$o \
	../obj_s/m_hook$o \
	../obj_s/m_item_cur$o \
	../obj_s/m_item_nam$o \
	../obj_s/m_item_new$o \
	../obj_s/m_item_opt$o \
	../obj_s/m_item_top$o \
	../obj_s/m_item_use$o \
	../obj_s/m_item_val$o \
	../obj_s/m_item_vis$o \
	../obj_s/m_items$o \
	../obj_s/m_new$o \
	../obj_s/m_opts$o \
	../obj_s/m_pad$o \
	../obj_s/m_pattern$o \
	../obj_s/m_post$o \
	../obj_s/m_req_name$o \
	../obj_s/m_scale$o \
	../obj_s/m_spacing$o \
	../obj_s/m_sub$o \
	../obj_s/m_userptr$o \
	../obj_s/m_win$o

$(SHARED_OBJS) : ../include/ncurses_cfg.h ./menu.priv.h

../lib/libmenu.so.$(REL_VERSION) : \
		$(RESULTING_SYMS) $(SHARED_OBJS)
	@echo linking $@
	@mkdir -p ../lib
	$(MK_SHARED_LIB) $(SHARED_OBJS) $(SHLIB_LIST)
	cd ../lib && ($(LN_S) libmenu.so.$(REL_VERSION) libmenu.so.$(ABI_VERSION); $(LN_S) libmenu.so.$(ABI_VERSION) libmenu.so; )

install \
install.libs \
install.menu :: $(DESTDIR)$(libdir)/libmenu.so.$(REL_VERSION)

$(DESTDIR)$(libdir)/libmenu.so.$(REL_VERSION) : \
		$(RESULTING_SYMS) $(SHARED_OBJS)
	@echo linking $@
	@mkdir -p $(DESTDIR)$(libdir)
	$(MK_SHARED_LIB) $(SHARED_OBJS) $(SHLIB_LIST)
	cd $(DESTDIR)$(libdir) && ($(LN_S) libmenu.so.$(REL_VERSION) libmenu.so.$(ABI_VERSION); $(LN_S) libmenu.so.$(ABI_VERSION) libmenu.so; )

uninstall \
uninstall.libs \
uninstall.menu ::
	@echo uninstalling $(DESTDIR)$(libdir)/libmenu.so.$(REL_VERSION)
	-rm -f $(DESTDIR)$(libdir)/libmenu.so.$(REL_VERSION)
	-rm -f $(DESTDIR)$(libdir)/libmenu.so.$(ABI_VERSION)
	-rm -f $(DESTDIR)$(libdir)/libmenu.so

clean ::
	-rm -f ../lib/libmenu.so.$(REL_VERSION)
	-rm -f ../lib/libmenu.so.$(ABI_VERSION)
	-rm -f ../lib/libmenu.so

mostlyclean::
	-rm -f $(SHARED_OBJS)

# generated by mk-2nd.awk
#   model:      obj_s
#   MODEL:      SHARED
#   echo:       yes
#   subset:     termlib+ext_tinfo+base+ext_funcs
#   crenames:   yes
#   cxxrenames: 
#   traces:     DEBUG
#   srcdir:     .

../obj_s/m_attribs$o :	$(srcdir)/m_attribs.c \
			$(HEADER_DEPS)
	$(LIBTOOL_COMPILE) $(CC) $(CFLAGS_SHARED) -c ../menu/m_attribs.c -o ../obj_s/m_attribs$o

../obj_s/m_cursor$o :	$(srcdir)/m_cursor.c \
			$(HEADER_DEPS)
	$(LIBTOOL_COMPILE) $(CC) $(CFLAGS_SHARED) -c ../menu/m_cursor.c -o ../obj_s/m_cursor$o

../obj_s/m_driver$o :	$(srcdir)/m_driver.c \
			$(HEADER_DEPS)
	$(LIBTOOL_COMPILE) $(CC) $(CFLAGS_SHARED) -c ../menu/m_driver.c -o ../obj_s/m_driver$o

../obj_s/m_format$o :	$(srcdir)/m_format.c \
			$(HEADER_DEPS)
	$(LIBTOOL_COMPILE) $(CC) $(CFLAGS_SHARED) -c ../menu/m_format.c -o ../obj_s/m_format$o

../obj_s/m_global$o :	$(srcdir)/m_global.c \
			$(HEADER_DEPS)
	$(LIBTOOL_COMPILE) $(CC) $(CFLAGS_SHARED) -c ../menu/m_global.c -o ../obj_s/m_global$o

../obj_s/m_hook$o :	$(srcdir)/m_hook.c \
			$(HEADER_DEPS)
	$(LIBTOOL_COMPILE) $(CC) $(CFLAGS_SHARED) -c ../menu/m_hook.c -o ../obj_s/m_hook$o

../obj_s/m_item_cur$o :	$(srcdir)/m_item_cur.c \
			$(HEADER_DEPS)
	$(LIBTOOL_COMPILE) $(CC) $(CFLAGS_SHARED) -c ../menu/m_item_cur.c -o ../obj_s/m_item_cur$o

../obj_s/m_item_nam$o :	$(srcdir)/m_item_nam.c \
			$(HEADER_DEPS)
	$(LIBTOOL_COMPILE) $(CC) $(CFLAGS_SHARED) -c ../menu/m_item_nam.c -o ../obj_s/m_item_nam$o

../obj_s/m_item_new$o :	$(srcdir)/m_item_new.c \
			$(HEADER_DEPS)
	$(LIBTOOL_COMPILE) $(CC) $(CFLAGS_SHARED) -c ../menu/m_item_new.c -o ../obj_s/m_item_new$o

../obj_s/m_item_opt$o :	$(srcdir)/m_item_opt.c \
			$(HEADER_DEPS)
	$(LIBTOOL_COMPILE) $(CC) $(CFLAGS_SHARED) -c ../menu/m_item_opt.c -o ../obj_s/m_item_opt$o

../obj_s/m_item_top$o :	$(srcdir)/m_item_top.c \
			$(HEADER_DEPS)
	$(LIBTOOL_COMPILE) $(CC) $(CFLAGS_SHARED) -c ../menu/m_item_top.c -o ../obj_s/m_item_top$o

../obj_s/m_item_use$o :	$(srcdir)/m_item_use.c \
			$(HEADER_DEPS)
	$(LIBTOOL_COMPILE) $(CC) $(CFLAGS_SHARED) -c ../menu/m_item_use.c -o ../obj_s/m_item_use$o

../obj_s/m_item_val$o :	$(srcdir)/m_item_val.c \
			$(HEADER_DEPS)
	$(LIBTOOL_COMPILE) $(CC) $(CFLAGS_SHARED) -c ../menu/m_item_val.c -o ../obj_s/m_item_val$o

../obj_s/m_item_vis$o :	$(srcdir)/m_item_vis.c \
			$(HEADER_DEPS)
	$(LIBTOOL_COMPILE) $(CC) $(CFLAGS_SHARED) -c ../menu/m_item_vis.c -o ../obj_s/m_item_vis$o

../obj_s/m_items$o :	$(srcdir)/m_items.c \
			$(HEADER_DEPS)
	$(LIBTOOL_COMPILE) $(CC) $(CFLAGS_SHARED) -c ../menu/m_items.c -o ../obj_s/m_items$o

../obj_s/m_new$o :	$(srcdir)/m_new.c \
			$(HEADER_DEPS)
	$(LIBTOOL_COMPILE) $(CC) $(CFLAGS_SHARED) -c ../menu/m_new.c -o ../obj_s/m_new$o

../obj_s/m_opts$o :	$(srcdir)/m_opts.c \
			$(HEADER_DEPS)
	$(LIBTOOL_COMPILE) $(CC) $(CFLAGS_SHARED) -c ../menu/m_opts.c -o ../obj_s/m_opts$o

../obj_s/m_pad$o :	$(srcdir)/m_pad.c \
			$(HEADER_DEPS)
	$(LIBTOOL_COMPILE) $(CC) $(CFLAGS_SHARED) -c ../menu/m_pad.c -o ../obj_s/m_pad$o

../obj_s/m_pattern$o :	$(srcdir)/m_pattern.c \
			$(HEADER_DEPS)
	$(LIBTOOL_COMPILE) $(CC) $(CFLAGS_SHARED) -c ../menu/m_pattern.c -o ../obj_s/m_pattern$o

../obj_s/m_post$o :	$(srcdir)/m_post.c \
			$(HEADER_DEPS)
	$(LIBTOOL_COMPILE) $(CC) $(CFLAGS_SHARED) -c ../menu/m_post.c -o ../obj_s/m_post$o

../obj_s/m_req_name$o :	$(srcdir)/m_req_name.c \
			$(HEADER_DEPS)
	$(LIBTOOL_COMPILE) $(CC) $(CFLAGS_SHARED) -c ../menu/m_req_name.c -o ../obj_s/m_req_name$o

../obj_s/m_scale$o :	$(srcdir)/m_scale.c \
			$(HEADER_DEPS)
	$(LIBTOOL_COMPILE) $(CC) $(CFLAGS_SHARED) -c ../menu/m_scale.c -o ../obj_s/m_scale$o

../obj_s/m_spacing$o :	$(srcdir)/m_spacing.c \
			$(HEADER_DEPS)
	$(LIBTOOL_COMPILE) $(CC) $(CFLAGS_SHARED) -c ../menu/m_spacing.c -o ../obj_s/m_spacing$o

../obj_s/m_sub$o :	$(srcdir)/m_sub.c \
			$(HEADER_DEPS)
	$(LIBTOOL_COMPILE) $(CC) $(CFLAGS_SHARED) -c ../menu/m_sub.c -o ../obj_s/m_sub$o

../obj_s/m_userptr$o :	$(srcdir)/m_userptr.c \
			$(HEADER_DEPS)
	$(LIBTOOL_COMPILE) $(CC) $(CFLAGS_SHARED) -c ../menu/m_userptr.c -o ../obj_s/m_userptr$o

../obj_s/m_win$o :	$(srcdir)/m_win.c \
			$(HEADER_DEPS)
	$(LIBTOOL_COMPILE) $(CC) $(CFLAGS_SHARED) -c ../menu/m_win.c -o ../obj_s/m_win$o


# generated by mk-hdr.awk
#  subset:     termlib+ext_tinfo+base+ext_funcs
#  compat:     yes

${INCLUDEDIR} :
	mkdir -p $@

install \
install.libs \
install.includes :: ${AUTO_SRC} ${INCLUDEDIR} \
		$(srcdir)/eti.h \
		$(srcdir)/menu.h
	@ (cd ${INCLUDEDIR} && rm -f eti.h) ; ../headers.sh ${INSTALL_DATA} ${INCLUDEDIR} ${srcdir} $(srcdir)/eti.h
	@ (cd ${INCLUDEDIR} && rm -f menu.h) ; ../headers.sh ${INSTALL_DATA} ${INCLUDEDIR} ${srcdir} $(srcdir)/menu.h

uninstall \
uninstall.libs \
uninstall.includes ::
	-@ (cd ${INCLUDEDIR} && rm -f eti.h)
	-@ (cd ${INCLUDEDIR} && rm -f menu.h)

.PHONY :	depend
depend : ${AUTO_SRC}
	makedepend -- ${CPPFLAGS} -- ${C_SRC}

# DO NOT DELETE THIS LINE -- make depend depends on it.
