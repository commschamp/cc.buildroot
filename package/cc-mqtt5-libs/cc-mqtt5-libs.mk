################################################################################
#
# cc-mqtt5-libs
#
################################################################################

CC_MQTT5_LIBS_VERSION = 0.5
CC_MQTT5_LIBS_SITE = $(call github,commschamp,cc.mqtt5.libs,v$(CC_MQTT5_LIBS_VERSION))
CC_MQTT5_LIBS_INSTALL_STAGING = YES
CC_MQTT5_LIBS_LICENSE = MPL-2.0
CC_MQTT5_LIBS_DEPENDENCIES = \
	cc-comms \
	cc-mqtt5 \
	$(if $(BR2_PACKAGE_CC_MQTT5_LIBS_CLIENT_APPS),boost,)

CC_MQTT5_LIBS_LICENSE_FILES = LICENSE

CC_MQTT5_LIBS_CONF_OPTS = \
	-DCC_MQTT5_WARN_AS_ERR=OFF \
	-DCC_MQTT5_CLIENT_DEFAULT_LIB=$(if $(BR2_PACKAGE_CC_MQTT5_LIBS_CLIENT),ON,OFF) \
	-DCC_MQTT5_CLIENT_APPS=$(if $(BR2_PACKAGE_CC_MQTT5_LIBS_CLIENT_APPS),ON,OFF)

$(eval $(cmake-package))
