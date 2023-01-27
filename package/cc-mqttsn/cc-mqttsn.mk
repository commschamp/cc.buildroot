################################################################################
#
# cc-mqttsn
#
################################################################################

CC_MQTTSN_VERSION = 2.1
CC_MQTTSN_SITE = $(call github,commschamp,cc.mqttsn.generated,v$(CC_MQTTSN_VERSION))
CC_MQTTSN_INSTALL_STAGING = YES
CC_MQTTSN_LICENSE = None

$(eval $(cmake-package))
