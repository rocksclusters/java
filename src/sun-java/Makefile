# $Id: Makefile,v 1.1 2008/09/12 19:04:12 anoop Exp $
# 
# @Copyright@
# @Copyright@
#
# $Log: Makefile,v $
# Revision 1.1  2008/09/12 19:04:12  anoop
# Made the java roll more solaris friendly
#
#

REDHAT.ROOT	= $(CURDIR)/../..
ROCKSROOT	= ../../../../..
-include $(ROCKSROOT)/etc/Rules.mk
include Rules.mk

pkg:
	zcat $(X86_TARBALL) | $(TAR) -xf -
	zcat $(X64_TARBALL) | $(TAR) -xf -
	pkgtrans -o . $(REDHAT.ROOT)/PKGS/ SUNW*

build:

install::

clean::
	rm -rf COPYRIGHT LICENSE \
	README* SUNWj* \
	THIRDPARTYLICENSEREADME.txt
