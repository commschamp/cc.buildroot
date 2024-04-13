################################################################################
#
# cc-mqtt5
#
################################################################################

CC_MQTT5_VERSION = 2.7
CC_MQTT5_SITE = $(call github,commschamp,cc.mqtt5.generated,v$(CC_MQTT5_VERSION))
CC_MQTT5_INSTALL_STAGING = YES
CC_MQTT5_LICENSE = MPL-2.0
CC_MQTT5_LICENSE_FILES = LICENSE
CC_MQTT5_DEPENDENCIES = cc-comms

$(eval $(cmake-package))
