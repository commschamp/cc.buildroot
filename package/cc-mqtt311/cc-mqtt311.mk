################################################################################
#
# cc-mqtt311
#
################################################################################

CC_MQTT311_VERSION = 2.2.1
CC_MQTT311_SITE = $(call github,commschamp,cc.mqtt311.generated,v$(CC_MQTT311_VERSION))
CC_MQTT311_INSTALL_STAGING = YES
CC_MQTT311_LICENSE = None

$(eval $(cmake-package))
