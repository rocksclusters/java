#!/bin/sh
#
# This file should remain OS independent
#
# $Id: bootstrap.sh,v 1.10 2012/05/06 05:49:10 phil Exp $
#
# @Copyright@
# 
# 				Rocks(r)
# 		         www.rocksclusters.org
# 		         version 5.5 (Mamba)
# 		         version 6.0 (Mamba)
# 
# Copyright (c) 2000 - 2012 The Regents of the University of California.
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
# $Log: bootstrap.sh,v $
# Revision 1.10  2012/05/06 05:49:10  phil
# Copyright Storm for Mamba
#
# Revision 1.9  2012/04/12 05:16:46  phil
# move rocks-java to base roll
#
# Revision 1.8  2011/11/07 06:37:52  phil
# add the jboss user and group.  Install the java profile.d files so that subordinate SW will build.
#
# Revision 1.7  2011/07/23 02:31:07  phil
# Viper Copyright
#
# Revision 1.6  2010/09/07 23:53:21  bruno
# star power for gb
#
# Revision 1.5  2009/05/01 19:07:19  mjk
# chimi con queso
#
# Revision 1.4  2008/10/18 00:56:10  mjk
# copyright 5.1
#
# Revision 1.3  2008/09/12 22:29:31  mjk
# - Bootstrap works outside of Rocks tree (typo also fixed)
# - JDK1.5 replaced with JDK6
# - javadb included but not installed (came with jdk.rpm.bin from sun)
# - x86_64 install 32 JDK also
#
# Revision 1.2  2008/03/06 23:41:54  mjk
# copyright storm on
#
# Revision 1.1  2007/07/13 20:53:17  mjk
# - added JOGL support (java3d GL hooks)
# - added bootstrap.sh
#

. $ROLLSROOT/etc/bootstrap-functions.sh

install_os_packages java-server

compile_and_install antlr

/usr/sbin/groupadd -g 405 jboss
/usr/sbin/useradd -u 405 -g 405 -d /opt/jboss jboss

