# $Id: java-version.mk,v 1.10 2010/09/07 23:53:21 bruno Exp $
#
# @Copyright@
# 
# 				Rocks(r)
# 		         www.rocksclusters.org
# 		         version 5.4 (Maverick)
# 
# Copyright (c) 2000 - 2010 The Regents of the University of California.
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
# $Log: java-version.mk,v $
# Revision 1.10  2010/09/07 23:53:21  bruno
# star power for gb
#
# Revision 1.9  2009/05/19 20:34:08  anoop
# Java was upgraded to 1.6.13
#
# Revision 1.8  2009/05/19 19:40:40  anoop
# Upgraded Solaris Java to Java 6 update 13
#
# Revision 1.7  2009/05/01 19:07:19  mjk
# chimi con queso
#
# Revision 1.6  2008/10/18 00:56:10  mjk
# copyright 5.1
#
# Revision 1.5  2008/09/12 22:29:31  mjk
# - Bootstrap works outside of Rocks tree (typo also fixed)
# - JDK1.5 replaced with JDK6
# - javadb included but not installed (came with jdk.rpm.bin from sun)
# - x86_64 install 32 JDK also
#
# Revision 1.4  2008/09/12 19:04:12  anoop
# Made the java roll more solaris friendly
#
# Revision 1.3  2008/03/06 23:41:54  mjk
# copyright storm on
#
# Revision 1.2  2007/08/17 01:15:46  mjk
# Bump version
#
# Revision 1.1  2007/08/17 01:01:32  mjk
# lost file
#

ifndef __JAVA_VERSION_MK
__JAVA_VERSION_MK = yes


ifdef __RULES_LINUX_MK
JAVA_VERSION	= 1.6.0_13
JAVA_HOME	= /usr/java/jdk$(JAVA_VERSION)
endif

ifdef __RULES_SUNOS_MK
JAVA_VERSION	= 1.6.0_13
JAVA_HOME	= /usr/jdk/instances/jdk1.6.0
endif

ifeq ($(ARCH),x86_64)
JAVA_ARCH	= amd64
else
JAVA_ARCH	= $(ARCH)
endif


JAVA_LIBEXT	= $(JAVA_HOME)/jre/lib/ext
JAVA_LIBARCH	= $(JAVA_HOME)/jre/lib/$(JAVA_ARCH)

java-version.mk: ../../java-version.mk
	cp $^ $@

clean::
	-rm -f java-version.mk

endif
