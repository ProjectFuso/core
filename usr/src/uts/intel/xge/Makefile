#
# CDDL HEADER START
#
# The contents of this file are subject to the terms of the
# Common Development and Distribution License (the "License").
# You may not use this file except in compliance with the License.
#
# You can obtain a copy of the license at usr/src/OPENSOLARIS.LICENSE
# or http://www.opensolaris.org/os/licensing.
# See the License for the specific language governing permissions
# and limitations under the License.
#
# When distributing Covered Code, include this CDDL HEADER in each
# file and include the License file at usr/src/OPENSOLARIS.LICENSE.
# If applicable, add the following below this CDDL HEADER, with the
# fields enclosed by brackets "[]" replaced with your own identifying
# information: Portions Copyright [yyyy] [name of copyright owner]
#
# CDDL HEADER END
#

#
# Copyright 2008 Sun Microsystems, Inc.  All rights reserved.
# Use is subject to license terms.
#
# Copyright 2019 Joyent, Inc.
#

#
#	Paths to the base of the uts directory trees
#
UTSBASE   = ../..

#
#	Define the module and object file sets.
#
MODULE		= xge
OBJECTS		= $(XGE_HAL_OBJS:%=$(OBJS_DIR)/%) $(XGE_OBJS:%=$(OBJS_DIR)/%)
ROOTMODULE	= $(ROOT_DRV_DIR)/$(MODULE)

#
#	Include common rules.
#
include $(UTSBASE)/intel/Makefile.intel

#
#	Define targets
#
ALL_TARGET	= $(BINARY)
INSTALL_TARGET	= $(BINARY) $(ROOTMODULE)

#
#	GENERAL PURPOUSE HAL FLAGS: Tuning HAL for Solaris specific modes
#
HAL_CFLAGS	 = -DXGE_HAL_USE_MGMT_AUX

#
#	TRACE SECTION: Possible values for MODULE, TRACE and ERR masks:
#
# XGE_COMPONENT_HAL_CONFIG		0x1
# XGE_COMPONENT_HAL_FIFO		0x2
# XGE_COMPONENT_HAL_RING		0x4
# XGE_COMPONENT_HAL_CHANNEL		0x8
# XGE_COMPONENT_HAL_DEVICE		0x10
# XGE_COMPONENT_HAL_MM			0x20
# XGE_COMPONENT_HAL_QUEUE		0x40
# XGE_COMPONENT_HAL_STATS		0x100
# XGE_COMPONENT_OSDEP			0x1000
# XGE_COMPONENT_LL			0x2000
# XGE_COMPONENT_TOE			0x4000
# XGE_COMPONENT_RDMA			0x8000
# XGE_COMPONENT_ALL			0xffffffff
#TRACE_CFLAGS = -DXGE_DEBUG_MODULE_MASK=0xffffffff \
#		-DXGE_DEBUG_TRACE_MASK=0xffffffff \
#		-DXGE_DEBUG_ERR_MASK=0xffffffff
TRACE_CFLAGS	= -DXGE_DEBUG_MODULE_MASK=0x00003010 \
		-DXGE_DEBUG_TRACE_MASK=0x00000000  \
		-DXGE_DEBUG_ERR_MASK=0x00003010

XGE_CFLAGS	= $(HAL_CFLAGS) $(TRACE_CFLAGS) $(CCVERBOSE) \
		-I$(UTSBASE)/common/io/xge/hal/include \
		-I$(UTSBASE)/common/io/xge/hal/xgehal \
		-I$(UTSBASE)/common/io/xge/drv -DSOLARIS

CFLAGS		+= $(XGE_CFLAGS) -xO4 -xcrossfile
CFLAGS64	+= $(XGE_CFLAGS) -xO4 -xcrossfile

#
#	Driver depends on MAC & IP
#
LDFLAGS		+=  -N misc/mac -N drv/ip

CERRWARN	+= -_gcc=-Wno-parentheses
CERRWARN	+= -_gcc=-Wno-unused-variable
CERRWARN	+= -_gcc=-Wno-unused-label
CERRWARN	+= -_gcc=-Wno-empty-body
CERRWARN	+= $(CNOWARN_UNINIT)

# needs work
SMOFF += indenting
SMOFF += all_func_returns
SMOFF += no_if_block
SMOFF += allocating_enough_data

#
#
#	Default build targets.
#
.KEEP_STATE:

def:		$(DEF_DEPS)

all:		$(ALL_DEPS)

clean:		$(CLEAN_DEPS)

clobber:	$(CLOBBER_DEPS)

install:	$(INSTALL_DEPS)

#
#	Include common targets.
#
include $(UTSBASE)/intel/Makefile.targ
