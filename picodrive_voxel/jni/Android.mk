LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := picodrive_voxel
LOCAL_SRC_FILES := ../picodrive_voxel.c
LOCAL_CFLAGS    := -O3 -ffast-math -fvisibility=hidden -std=c99
LOCAL_LDLIBS    := -lm -ldl
LOCAL_LDFLAGS   := -Wl,-z,max-page-size=16384

include $(BUILD_SHARED_LIBRARY)
