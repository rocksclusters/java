#
# $Id: java.csh,v 1.6 2008/03/06 23:41:55 mjk Exp $
#
# @Copyright@
# 
# 				Rocks(r)
# 		         www.rocksclusters.org
# 		            version 5.0 (V)
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
#
# $Log: java.csh,v $
# Revision 1.6  2008/03/06 23:41:55  mjk
# copyright storm on
#
# Revision 1.5  2007/06/23 04:03:47  mjk
# mars hill copyright
#
# Revision 1.4  2006/12/07 23:07:20  mjk
# - Update JDK
# - Split single node file into server/client/base
# - No more per arch profile scripts
# - Eclipse only on frontend
# - tomcat and jboss everywhere (but not running)
#
# Revision 1.12  2006/09/11 22:49:05  mjk
# monkey face copyright
#
# Revision 1.11  2006/09/05 21:59:16  anoop
# Main change -
#
# Modifications to a lot of XML files. I apologize if people feel that I've
# stepped on someone else's toes here, but right now, the MANPATH variable is
# causing a bit of a headache and needs to be rethought. So all additions to
# the MANPATH variable are done via the /etc/man.config file.
#
# Please do not write shell scripts and profile.d files setting the MANPATH variable present
# as this would override the /etc/man.config file, and most man pages will not be
# available to you.
#
# Smaller changes -
#
# Refreshing packages in the xena roll. Development of xena halted for the next few weeks atleast
# Change the python version number that ganglia-python uses.
# Note added to NCBI Blast regarding upgrades in the future.
#
# Revision 1.10  2006/08/10 00:11:09  mjk
# 4.2 copyright
#
# Revision 1.9  2006/07/25 00:27:42  phil
# Add MANPATH for java
#
# Revision 1.8  2006/07/25 00:11:07  phil
#
# update default paths to use newer version
#
# Revision 1.7  2005/10/12 18:10:00  mjk
# final copyright for 4.1
#
# Revision 1.6  2005/09/29 23:15:06  bruno
# update the environment variable settings to match the new version of java
#
# Revision 1.5  2005/09/16 01:03:37  mjk
# updated copyright
#
# Revision 1.4  2005/08/09 20:54:28  mjk
# jdk refresh
#
# Revision 1.3  2005/06/11 10:46:27  tsailm
# Update profile.d scripts for new jdks
#
# Revision 1.2  2005/05/24 21:23:00  mjk
# update copyright, release is not any closer
#
# Revision 1.1  2005/02/24 01:11:54  mjk
# java version differs by arch
#

setenv JAVA_HOME  /usr/java/jdk1.5.0_10
set path = ( $JAVA_HOME/bin $path)

