LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

$(call import-add-path,$(LOCAL_PATH)/../../cocos2d)
$(call import-add-path,$(LOCAL_PATH)/../../cocos2d/external)
$(call import-add-path,$(LOCAL_PATH)/../../cocos2d/cocos)
$(call import-add-path,$(LOCAL_PATH)/../../cocos2d/cocos/audio/include)
$(call import-add-path,$(LOCAL_PATH))

LOCAL_MODULE := MyGame_shared

LOCAL_MODULE_FILENAME := libMyGame

LOCAL_SRC_FILES := hellocpp/main.cpp \
../../Classes/AppDelegate.cpp \
../../Classes/AudioManager.cpp \
../../Classes/AutoGun.cpp \
../../Classes/B2Skeleton.cpp \
../../Classes/B2Sprite.cpp \
../../Classes/BombOfEnemy.cpp \
../../Classes/BombOfSoldier.cpp \
../../Classes/Bullet.cpp \
../../Classes/BulletOfEnemy.cpp \
../../Classes/BulletOfHero.cpp \
../../Classes/CollisionListener.cpp \
../../Classes/ControlSettingScene.cpp \
../../Classes/Dialog.cpp \
../../Classes/DynamicHumanEnemy.cpp \
../../Classes/Enemy.cpp \
../../Classes/Floor.cpp \
../../Classes/Fort.cpp \
../../Classes/GameScene.cpp \
../../Classes/GB2ShapeCache-x.cpp \
../../Classes/HelicopterBoomEnemy.cpp \
../../Classes/HelicopterShootEnemy.cpp \
../../Classes/HelicopterSoldier.cpp \
../../Classes/Hud.cpp \
../../Classes/InfiniteParallaxNode.cpp \
../../Classes/Item.cpp \
../../Classes/MiniFort.cpp \
../../Classes/PlaneSoldier.cpp \
../../Classes/SneakyButton.cpp \
../../Classes/SneakyButtonSkinnedBase.cpp \
../../Classes/SneakyJoystick.cpp \
../../Classes/SneakyJoystickSkinnedBase.cpp \
../../Classes/Soldier.cpp \
../../Classes/SplashScene.cpp \
../../Classes/StartScene.cpp \
../../Classes/StaticHumanEnemy.cpp \
../../Classes/TankEnemy.cpp \
../../Classes/TankSoldier.cpp

LOCAL_CPPFLAGS := -DSDKBOX_ENABLED
LOCAL_LDLIBS := -landroid \
-llog
LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../Classes
LOCAL_WHOLE_STATIC_LIBRARIES := PluginAdMob \
sdkbox \
PluginGoogleAnalytics

# _COCOS_HEADER_ANDROID_BEGIN
# _COCOS_HEADER_ANDROID_END


LOCAL_STATIC_LIBRARIES := cocos2dx_static

# _COCOS_LIB_ANDROID_BEGIN
# _COCOS_LIB_ANDROID_END

include $(BUILD_SHARED_LIBRARY)

$(call import-module,.)
$(call import-module, ./sdkbox)
$(call import-module, ./pluginadmob)
$(call import-module, ./plugingoogleanalytics)

# _COCOS_LIB_IMPORT_ANDROID_BEGIN
# _COCOS_LIB_IMPORT_ANDROID_END
