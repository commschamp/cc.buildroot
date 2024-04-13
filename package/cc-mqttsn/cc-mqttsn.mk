################################################################################
#
# cc-mqttsn
#
################################################################################

CC_MQTTSN_VERSION = 2.7
CC_MQTTSN_SITE = $(call github,commschamp,cc.mqttsn.generated,v$(CC_MQTTSN_VERSION))
CC_MQTTSN_INSTALL_STAGING = YES
CC_MQTTSN_LICENSE = MPL-2.0
CC_MQTTSN_LICENSE_FILES = LICENSE
CC_MQTTSN_DEPENDENCIES = cc-comms

$(eval $(cmake-package))
