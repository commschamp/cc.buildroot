################################################################################
#
# cc-x509
#
################################################################################

CC_X509_VERSION = 0.9
CC_X509_SITE = $(call github,commschamp,cc.x509.generated,v$(CC_X509_VERSION))
CC_X509_INSTALL_STAGING = YES
CC_X509_LICENSE = MPL-2.0
CC_X509_LICENSE_FILES = LICENSE
CC_X509_DEPENDENCIES = cc-comms

$(eval $(cmake-package))
