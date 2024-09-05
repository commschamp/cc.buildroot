################################################################################
#
# cc-mqttsn-libs
#
################################################################################

CC_MQTTSN_LIBS_VERSION = 2.0.3
CC_MQTTSN_LIBS_SITE = $(call github,commschamp,cc.mqttsn.libs,v$(CC_MQTTSN_LIBS_VERSION))
CC_MQTTSN_LIBS_INSTALL_STAGING = YES
CC_MQTTSN_LIBS_LICENSE = MPL-2.0
CC_MQTTSN_LIBS_DEPENDENCIES = \
	cc-comms \
	cc-mqttsn \
	cc-mqtt311 \
	$(if $(BR2_PACKAGE_CC_MQTTSN_LIBS_CLIENT_APPS),boost,) \
	$(if $(BR2_PACKAGE_CC_MQTTSN_LIBS_GATEWAY_APPS),boost,) \

CC_MQTTSN_LIBS_LICENSE_FILES = LICENSE

CC_MQTTSN_LIBS_CONF_OPTS = \
	-DCC_MQTTSN_WARN_AS_ERR=OFF \
	-DCC_MQTTSN_CLIENT_DEFAULT_LIB=$(if $(BR2_PACKAGE_CC_MQTTSN_LIBS_CLIENT),ON,OFF) \
	-DCC_MQTTSN_GATEWAY_LIB=$(if $(BR2_PACKAGE_CC_MQTTSN_LIBS_GATEWAY),ON,OFF) \
	-DCC_MQTTSN_CLIENT_APPS=$(if $(BR2_PACKAGE_CC_MQTTSN_LIBS_CLIENT_APPS),ON,OFF) \
	-DCC_MQTTSN_GATEWAY_APPS=$(if $(BR2_PACKAGE_CC_MQTTSN_LIBS_GATEWAY_APPS),ON,OFF)

$(eval $(cmake-package))
