include theos/makefiles/common.mk

TWEAK_NAME = StartToNow
StartToNow_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

SUBPROJECTS += starttonowprefs
include $(THEOS_MAKE_PATH)/aggregate.mk