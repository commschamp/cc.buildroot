################################################################################
#
# cc-commsdsl
#
################################################################################

CC_COMMSDSL_VERSION = 5.1.2
CC_COMMSDSL_SITE = $(call github,commschamp,commsdsl,v$(CC_COMMSDSL_VERSION))
CC_COMMSDSL_INSTALL_STAGING = YES
CC_COMMSDSL_LICENSE = Apache-2.0
CC_COMMSDSL_LICENSE_FILES = LICENSE
CC_COMMSDSL_DEPENDENCIES = libxml2
HOST_CC_COMMSDSL_DEPENDENCIES = host-libxml2

HOST_CC_COMMSDSL_CONF_OPTS = \
	-DCOMMSDSL_WARN_AS_ERR=OFF \
	-DCOMMSDSL_BUILD_COMMSDSL2TEST=$(if $(BR2_PACKAGE_HOST_CC_COMMSDSL2TEST),ON,OFF) \
	-DCOMMSDSL_BUILD_COMMSDSL2TOOLS_QT=$(if $(BR2_PACKAGE_HOST_CC_COMMSDSL2TOOLS_QT),ON,OFF) \
	-DCOMMSDSL_BUILD_COMMSDSL2SWIG=$(if $(BR2_PACKAGE_HOST_CC_COMMSDSL2SWIG),ON,OFF)


$(eval $(host-cmake-package))
