include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/kernel.mk
include $(INCLUDE_DIR)/package.mk

PKG_NAME:=link-merge
PKG_VERSION:=2015.11
PGK_RELEASE:=1
PKG_MAINTAINER:=Zhao Zhang <zhao.zhang.glacier@gmail.com>
PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(PKG_VERSION).$(PGK_RELEASE)
PKG_INSTALL_DIR:=$(PKG_BUILD_DIR)/ipkg-install


define Package/link-merge
	SECTION:=franz
	CATEGORY:=Franz
	TITLE:=Link layer merging tool
	DEPENDS:=+kmod-macvlan +mwan3
endef

define Build/Prepare
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/link-merge/install
	$(INSTALL_DIR) $(1)
	$(CP) ./files/* $(1)/
endef


$(eval $(call BuildPackage,link-merge))
