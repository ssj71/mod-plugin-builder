######################################
#
# infamous-plugins
#
######################################

INFAMOUS_PLUGINS_VERSION = ca7ccc28934e5e3b8ab70d7ef66eb114396d2ed1
INFAMOUS_PLUGINS_SITE = $(call github,ssj71,infamousPlugins,$(INFAMOUS_PLUGINS_VERSION))
#envfollower.lv2 ewham.lv2 casynth.lv2 cheapdist.lv2 hip2b.lv2 lushlife.lv2 powercut.lv2 powerup.lv2 stuck.lv2 bentdelay.lv2
INFAMOUS_PLUGINS_BUNDLES = ewham.lv2 stuck.lv2 powercut.lv2

#define INFAMOUS_PLUGINS_POST_INSTALL_TARGET_TTLFILES
#	cp -rL $($(PKG)_PKGDIR)/ewham.lv2/* $(TARGET_DIR)/usr/lib/lv2/ewham.lv2/
#	cp -rL $($(PKG)_PKGDIR)/stuck.lv2/* $(TARGET_DIR)/usr/lib/lv2/stuck.lv2/
#	cp -rL $($(PKG)_PKGDIR)/powercut.lv2/* $(TARGET_DIR)/usr/lib/lv2/powercut.lv2/
#endef

#INFAMOUS_PLUGINS_POST_INSTALL_TARGET_HOOKS += INFAMOUS_PLUGINS_POST_INSTALL_TARGET_TTLFILES

$(eval $(cmake-package))
