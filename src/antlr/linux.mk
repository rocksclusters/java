# $Id: linux.mk,v 1.1 2008/09/12 19:04:12 anoop Exp $
#
# @Copyright@
# @Copyright@
#
# $Log: linux.mk,v $
# Revision 1.1  2008/09/12 19:04:12  anoop
# Made the java roll more solaris friendly
#
install::
	mkdir -p $(ROOT)/$(JAVA_LIBEXT)
	install -m444 $(NAME)-$(VERSION)/lib/*.jar $(ROOT)/$(JAVA_LIBEXT)/
