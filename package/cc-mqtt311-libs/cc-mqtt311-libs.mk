################################################################################
#
# cc-mqtt311-libs
#
################################################################################

CC_MQTT311_LIBS_VERSION = 0.1.1
CC_MQTT311_LIBS_SITE = $(call github,commschamp,cc.mqtt311.libs,v$(CC_MQTT311_LIBS_VERSION))
CC_MQTT311_LIBS_INSTALL_STAGING = YES
CC_MQTT311_LIBS_LICENSE = MPL-2.0
CC_MQTT311_LIBS_DEPENDENCIES = \
	cc-comms \
	cc-mqtt311 \
	$(if $(BR2_PACKAGE_CC_MQTT311_LIBS_CLIENT_APPS),boost,)

CC_MQTT311_LIBS_LICENSE_FILES = LICENSE

CC_MQTT311_LIBS_CONF_OPTS = \
	-DCC_MQTT311_WARN_AS_ERR=OFF \
	-DCC_MQTT311_CLIENT_DEFAULT_LIB=$(if $(BR2_PACKAGE_CC_MQTT311_LIBS_CLIENT),ON,OFF) \
	-DCC_MQTT311_CLIENT_APPS=$(if $(BR2_PACKAGE_CC_MQTT311_LIBS_CLIENT_APPS),ON,OFF)

$(eval $(cmake-package))
