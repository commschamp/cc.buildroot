################################################################################
#
# cc-x509
#
################################################################################

CC_X509_VERSION = 0.4
CC_X509_SITE = $(call github,commschamp,cc.x509.generated,v$(CC_X509_VERSION))
CC_X509_INSTALL_STAGING = YES
CC_X509_LICENSE = None
CC_X509_DEPENDENCIES = cc-comms

$(eval $(cmake-package))
