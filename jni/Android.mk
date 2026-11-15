# ndk-build para o core Retro8 Voxel 3D (wrapper libretro do retro8/PICO-8).
#
# O job "android" do CI roda: ndk-build APP_ABI=<abi>
# e depois copia libs/<abi>/libretro.so -> jgenesis_libretro_android.so
# (renomeie o artefato para retro8_voxel_libretro_android.so).
#
# Mesma convencao dos cores libretro (ex.: libretro-2048): o source fica na
# raiz do repositorio e o jni/Android.mk aponta para ele via CORE_DIR.

LOCAL_PATH := $(call my-dir)

CORE_DIR := $(LOCAL_PATH)/..

include $(CLEAR_VARS)

LOCAL_MODULE    := retro
LOCAL_SRC_FILES := $(CORE_DIR)/retro8_voxel.c
LOCAL_CFLAGS    := -O3 -ffast-math -fvisibility=hidden
LOCAL_LDLIBS    := -lm -ldl
LOCAL_LDFLAGS   := -Wl,-z,max-page-size=16384

include $(BUILD_SHARED_LIBRARY)
