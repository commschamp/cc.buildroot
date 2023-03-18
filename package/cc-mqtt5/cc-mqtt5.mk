################################################################################
#
# cc-mqtt5
#
################################################################################

CC_MQTT5_VERSION = 2.2.1
CC_MQTT5_SITE = $(call github,commschamp,cc.mqtt5.generated,v$(CC_MQTT5_VERSION))
CC_MQTT5_INSTALL_STAGING = YES
CC_MQTT5_LICENSE = None

$(eval $(cmake-package))
