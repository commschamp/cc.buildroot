################################################################################
#
# cc-ublox
#
################################################################################

CC_UBLOX_VERSION = 2.1
CC_UBLOX_SITE = $(call github,commschamp,cc.ublox.generated,v$(CC_UBLOX_VERSION))
CC_UBLOX_INSTALL_STAGING = YES
CC_UBLOX_LICENSE = None

$(eval $(cmake-package))
