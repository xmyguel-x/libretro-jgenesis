# ndk-build para o core Retro8 Voxel 3D (wrapper libretro do retro8/PICO).
# LOCAL_SRC_FILES e relativo a LOCAL_PATH (a pasta jni/).

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := retro
LOCAL_SRC_FILES := ../retro8_voxel.c
LOCAL_CFLAGS    := -O3 -ffast-math -fvisibility=hidden
LOCAL_LDLIBS    := -lm -ldl
LOCAL_LDFLAGS   := -Wl,-z,max-page-size=16384

include $(BUILD_SHARED_LIBRARY)
