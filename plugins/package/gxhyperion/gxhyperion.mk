######################################
#
# gxhyperion
#
######################################

GXHYPERION_VERSION = 6abb0a454270acb257d3fe8f1868b92da60d7513
GXHYPERION_SITE = $(call github,moddevices,GxHyperion.lv2,$(GXHYPERION_VERSION))
GXHYPERION_BUNDLES = gx_hyperion.lv2

GXHYPERION_TARGET_MAKE = $(TARGET_MAKE_ENV) $(TARGET_CONFIGURE_OPTS) $(MAKE) SSE_CFLAGS="-O3 -mfpu=vfpv3" -C $(@D)

define GXHYPERION_BUILD_CMDS
	$(GXHYPERION_TARGET_MAKE)
endef

define GXHYPERION_INSTALL_TARGET_CMDS
	$(GXHYPERION_TARGET_MAKE) install DESTDIR=$(TARGET_DIR) INSTALL_DIR=/usr/lib/lv2
	cp -rL $($(PKG)_PKGDIR)/gx_hyperion.lv2/* $(TARGET_DIR)/usr/lib/lv2/gx_hyperion.lv2/
endef

$(eval $(generic-package))
