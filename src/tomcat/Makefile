# $Id: Makefile,v 1.12 2008/10/18 00:56:12 mjk Exp $
#
# @Copyright@
# 
# 				Rocks(r)
# 		         www.rocksclusters.org
# 		           version 5.1  (VI)
# 
# Copyright (c) 2000 - 2008 The Regents of the University of California.
# All rights reserved.	
# 
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are
# met:
# 
# 1. Redistributions of source code must retain the above copyright
# notice, this list of conditions and the following disclaimer.
# 
# 2. Redistributions in binary form must reproduce the above copyright
# notice unmodified and in its entirety, this list of conditions and the
# following disclaimer in the documentation and/or other materials provided 
# with the distribution.
# 
# 3. All advertising and press materials, printed or electronic, mentioning
# features or use of this software must display the following acknowledgement: 
# 
# 	"This product includes software developed by the Rocks(r)
# 	Cluster Group at the San Diego Supercomputer Center at the
# 	University of California, San Diego and its contributors."
# 
# 4. Except as permitted for the purposes of acknowledgment in paragraph 3,
# neither the name or logo of this software nor the names of its
# authors may be used to endorse or promote products derived from this
# software without specific prior written permission.  The name of the
# software includes the following terms, and any derivatives thereof:
# "Rocks", "Rocks Clusters", and "Avalanche Installer".  For licensing of 
# the associated name, interested parties should contact Technology 
# Transfer & Intellectual Property Services, University of California, 
# San Diego, 9500 Gilman Drive, Mail Code 0910, La Jolla, CA 92093-0910, 
# Ph: (858) 534-5815, FAX: (858) 534-7345, E-MAIL:invent@ucsd.edu
# 
# THIS SOFTWARE IS PROVIDED BY THE REGENTS AND CONTRIBUTORS ``AS IS''
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
# THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
# PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE REGENTS OR CONTRIBUTORS
# BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
# CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
# SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
# BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
# WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
# OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
# IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
# 
# @Copyright@
#
# $Log: Makefile,v $
# Revision 1.12  2008/10/18 00:56:12  mjk
# copyright 5.1
#
# Revision 1.11  2008/08/29 18:22:57  mjk
# can build outside of tree
#
# Revision 1.10  2008/03/06 23:41:55  mjk
# copyright storm on
#
# Revision 1.9  2007/12/06 23:13:23  abrust
# put symlink back to tomcat-5.5
#
# Revision 1.8  2007/12/06 06:22:25  abrust
# made 6.0.14 default tomcat instance
#
# Revision 1.7  2007/11/28 02:02:01  abrust
# updated jboss to 4.2.1
# updated tomcat to 6.0.14 * although default is still 5.5
#
# Revision 1.6  2007/06/23 04:03:48  mjk
# mars hill copyright
#
# Revision 1.5  2007/01/09 23:45:36  mjk
# still tomcating
#
# Revision 1.4  2007/01/09 20:41:11  mjk
# more tomcat fixes
#
# Revision 1.3  2007/01/09 20:21:20  mjk
# more tomcats means more fun
#
# Revision 1.2  2006/10/10 23:49:16  mjk
# tomcat done
#
# Revision 1.1  2006/10/10 22:36:58  mjk
# *** empty log message ***
#

PKGROOT = /opt/tomcat

REDHAT.ROOT = $(PWD)/../../
-include $(ROCKSROOT)/etc/Rules.mk
include Rules.mk

install:: install_6_0 install_5_5 install_5_0
	mkdir -p $(ROOT)/etc/rc.d/init.d
	mkdir -p $(ROOT)/etc/sysconfig/tomcat
	install -m744 tomcat.rc	$(ROOT)/etc/rc.d/init.d/tomcat

build: build_6_0 build_5_5 build_5_0

install_6_0:
	mkdir -p $(ROOT)/$(PKGROOT)-$(VERSION_6_0)/logs
	(								\
		cd $(NAME_6_0)-$(VERSION_6_0);				\
		find . -type f |					\
			cpio -pduv $(ROOT)/$(PKGROOT)-$(VERSION_6_0);	\
	)
	chmod a+rx $(ROOT)/$(PKGROOT)-$(VERSION_6_0)/logs
	chown -R 412.412 $(ROOT)/$(PKGROOT)-$(VERSION_6_0)
	chmod -R g+r $(ROOT)/$(PKGROOT)-$(VERSION_6_0)
	find $(ROOT)/$(PKGROOT)-$(VERSION_6_0) -type d -exec chmod g+rwx {} \;

install_5_5:
	mkdir -p $(ROOT)/$(PKGROOT)-$(VERSION_5_5)/logs
	(								\
		cd $(NAME_5_5)-$(VERSION_5_5);				\
		find . -type f |					\
			cpio -pduv $(ROOT)/$(PKGROOT)-$(VERSION_5_5);	\
	)
	chmod a+rx $(ROOT)/$(PKGROOT)-$(VERSION_5_5)/logs
	chown -R 412.412 $(ROOT)/$(PKGROOT)-$(VERSION_5_5)
	chmod -R g+r $(ROOT)/$(PKGROOT)-$(VERSION_5_5)
	find $(ROOT)/$(PKGROOT)-$(VERSION_5_5) -type d -exec chmod g+rwx {} \;
	ln -s $(PKGROOT)-$(VERSION_5_5) $(ROOT)/$(PKGROOT)

install_5_0:
	mkdir -p $(ROOT)/$(PKGROOT)-$(VERSION_5_0)/logs
	(								\
		cd $(NAME_5_0)-$(VERSION_5_0);				\
		find . -type f |					\
			cpio -pduv $(ROOT)/$(PKGROOT)-$(VERSION_5_0);	\
	)
	chmod a+rx $(ROOT)/$(PKGROOT)-$(VERSION_5_0)/logs
	chown -R 412.412 $(ROOT)/$(PKGROOT)-$(VERSION_5_0)
	chmod -R g+r $(ROOT)/$(PKGROOT)-$(VERSION_5_0)
	find $(ROOT)/$(PKGROOT)-$(VERSION_5_0) -type d -exec chmod g+rwx {} \;


build_6_0:
	(								\
		tar -xzf $(NAME_6_0)-$(VERSION_6_0).tar.gz;		\
		cd $(NAME_6_0)-$(VERSION_6_0)/bin;			\
		tar -xzf jsvc.tar.gz;					\
	)
	(								\
		cd $(NAME_6_0)-$(VERSION_6_0)/bin/jsvc-src;		\
		autoconf -f;						\
		sh ./configure;						\
		make;							\
		cp jsvc ..;						\
	)

build_5_5:
	(								\
		tar -xzf $(NAME_5_5)-$(VERSION_5_5).tar.gz;		\
		cd $(NAME_5_5)-$(VERSION_5_5)/bin;			\
		tar -xzf jsvc.tar.gz;					\
	)
	(								\
		cd $(NAME_5_5)-$(VERSION_5_5)/bin/jsvc-src;		\
		autoconf -f;						\
		sh ./configure;						\
		make;							\
		cp jsvc ..;						\
	)

build_5_0:
	(								\
		tar -xzf $(NAME_5_0)-$(VERSION_5_0).tar.gz;		\
		cd $(NAME_5_0)-$(VERSION_5_0)/bin;			\
		tar -xzf jsvc.tar.gz;					\
	)
	cd patch-files && find . -type f | grep -v CVS | cpio -pduv ..
	(								\
		cd $(NAME_5_0)-$(VERSION_5_0)/bin/jsvc-src;		\
		autoconf -f;						\
		sh ./configure;						\
		make;							\
		cp jsvc ..;						\
	)
		


clean::
	rm -rf $(NAME_6_0)-$(VERSION_6_0)
	rm -rf $(NAME_5_5)-$(VERSION_5_5)
	rm -rf $(NAME_5_0)-$(VERSION_5_0)
