################################################################################
#
# cc-mqttsn-libs
#
################################################################################

CC_MQTTSN_LIBS_VERSION = 1.0.8
CC_MQTTSN_LIBS_SITE = $(call github,commschamp,cc.mqttsn.libs,v$(CC_MQTTSN_LIBS_VERSION))
CC_MQTTSN_LIBS_INSTALL_STAGING = YES
CC_MQTTSN_LIBS_LICENSE = MPL-2.0
CC_MQTTSN_LIBS_DEPENDENCIES = \
	cc-comms \
	cc-mqttsn \
	cc-mqtt311 \
	$(if $(BR2_PACKAGE_CC_MQTTSN_LIBS_CLIENT_UDP_QT_APPS),qt5base,)

CC_MQTTSN_LIBS_LICENSE_FILES = LICENSE

CC_MQTTSN_LIBS_CONF_OPTS = \
	-DCC_MQTTSN_WARN_AS_ERR=OFF \
	-DCC_MQTTSN_CLIENT_DEFAULT_LIB=$(if $(BR2_PACKAGE_CC_MQTTSN_LIBS_CLIENT),ON,OFF) \
	-DCC_MQTTSN_BUILD_GATEWAY=$(if $(BR2_PACKAGE_CC_MQTTSN_LIBS_GATEWAY),ON,OFF) \
	-DCC_MQTTSN_BUILD_CLIENT_APPS=$(if $(BR2_PACKAGE_CC_MQTTSN_LIBS_CLIENT_UDP_QT_APPS),ON,OFF) \
	-DCC_MQTTSN_BUILD_GATEWAY_APPS=$(if $(BR2_PACKAGE_CC_MQTTSN_LIBS_GATEWAY_UDP_QT_APPS),ON,OFF)

$(eval $(cmake-package))
