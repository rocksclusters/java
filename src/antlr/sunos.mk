# $Id: sunos.mk,v 1.1 2008/09/12 19:04:12 anoop Exp $
#
# @Copyright@
# @Copyright@
#
# $Log: sunos.mk,v $
# Revision 1.1  2008/09/12 19:04:12  anoop
# Made the java roll more solaris friendly
#

install::
	mkdir -p $(ROOT)/$(JAVA_LIBEXT)
	$(INSTALL) -m444 $(NAME)-$(VERSION)/lib/*.jar $(ROOT)/$(JAVA_LIBEXT)/
	chgrp -R bin $(ROOT)/usr/jdk
