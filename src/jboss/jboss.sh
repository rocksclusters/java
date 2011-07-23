# $Id: jboss.sh,v 1.8 2011/07/23 02:31:12 phil Exp $ 
#
# @Copyright@
# 
# 				Rocks(r)
# 		         www.rocksclusters.org
# 		         version 5.4.3 (Viper)
# 
# Copyright (c) 2000 - 2011 The Regents of the University of California.
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
# 	Development Team at the San Diego Supercomputer Center at the
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
# $Log: jboss.sh,v $
# Revision 1.8  2011/07/23 02:31:12  phil
# Viper Copyright
#
# Revision 1.7  2010/09/07 23:53:21  bruno
# star power for gb
#
# Revision 1.6  2009/05/01 19:07:19  mjk
# chimi con queso
#
# Revision 1.5  2008/10/18 00:56:11  mjk
# copyright 5.1
#
# Revision 1.4  2008/03/06 23:41:55  mjk
# copyright storm on
#
# Revision 1.3  2007/06/23 04:03:47  mjk
# mars hill copyright
#
# Revision 1.2  2006/09/11 22:49:05  mjk
# monkey face copyright
#
# Revision 1.1  2006/09/11 19:59:38  mjk
# moved over from jboss roll
#
# Revision 1.2  2006/06/09 23:57:16  mjk
# kill dead code, simplify
#
# Revision 1.1  2006/05/03 18:58:59  mjk
# *** empty log message ***
#
# Revision 1.4  2006/03/13 17:35:10  mjk
# read sge config first
#
# Revision 1.3  2006/03/09 20:22:38  nadya
# add drmaa.jar to classpath
#
# Revision 1.2  2006/03/03 20:12:44  nadya
# add user
#
# Revision 1.1  2006/03/03 19:00:22  nadya
# initial revision
#
#

if [ -e /etc/profile.d/sge-binaries.sh ]; then
	. /etc/profile.d/sge-binaries.sh
	export JBOSS_CLASSPATH="$SGE_ROOT/lib/drmaa.jar"
fi

export JBOSS_HOME=/opt/jboss
export JBOSS_USER=jboss

