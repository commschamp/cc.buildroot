################################################################################
#
# cc-x509
#
################################################################################

CC_X509_VERSION = 0.3
CC_X509_SITE = $(call github,commschamp,cc.x509.generated,v$(CC_X509_VERSION))
CC_X509_INSTALL_STAGING = YES
CC_X509_LICENSE = None

$(eval $(cmake-package))
