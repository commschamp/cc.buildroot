################################################################################
#
# cc-mqtt311
#
################################################################################

CC_MQTT311_VERSION = 2.7
CC_MQTT311_SITE = $(call github,commschamp,cc.mqtt311.generated,v$(CC_MQTT311_VERSION))
CC_MQTT311_INSTALL_STAGING = YES
CC_MQTT311_LICENSE = MPL-2.0
CC_MQTT311_LICENSE_FILES = LICENSE
CC_MQTT311_DEPENDENCIES = cc-comms

$(eval $(cmake-package))
