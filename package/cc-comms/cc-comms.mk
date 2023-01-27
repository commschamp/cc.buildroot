################################################################################
#
# cc-comms
#
################################################################################

CC_COMMS_VERSION = 5.0.3
CC_COMMS_SITE = $(call github,commschamp,comms,v$(CC_COMMS_VERSION))
CC_COMMS_INSTALL_STAGING = YES
CC_COMMS_LICENSE = MPL-2
CC_COMMS_LICENSE_FILES = LICENSE

$(eval $(cmake-package))
