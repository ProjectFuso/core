#!/bin/sh

# Copyright (c) 1999 by Sun Microsystems, Inc.
# All rights reserved.
#

UNAME_R=`/usr/bin/uname -r`

OS_MAJOR=`echo $UNAME_R | /usr/bin/sed -e 's/^\([^.]*\).*/\1/'`
OS_MINOR=`echo $UNAME_R | /usr/bin/sed -e 's/^[^.]*\.\([^.]*\).*/\1/'`
OS_VERSION=`echo $UNAME_R | tr '.' '_'`

cat <<EOF > new_os_version.h
#ifndef OS_VERSION_H
#define OS_VERSION_H

#define SUNOS_5_11
#define OS_MAJOR 5
#define OS_MINOR 11

#endif
EOF

if [ -f os_version.h ]; then
	if /usr/bin/cmp -s new_os_version.h os_version.h; then
		/usr/bin/rm -f new_os_version.h
	else
		/usr/bin/rm -f os_version.h
		/usr/bin/mv new_os_version.h os_version.h
	fi
else
	/usr/bin/mv new_os_version.h os_version.h
fi
