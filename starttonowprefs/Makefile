include theos/makefiles/common.mk

BUNDLE_NAME = startToNowPrefs
startToNowPrefs_FILES = startToNowPrefs.mm
startToNowPrefs_INSTALL_PATH = /Library/PreferenceBundles
startToNowPrefs_FRAMEWORKS = UIKit
startToNowPrefs_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/startToNowPrefs.plist$(ECHO_END)
