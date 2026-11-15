# Build do core Retro8 Voxel 3D (wrapper libretro) para Android via ndk-build.
# O job "android" do CI roda: ndk-build APP_ABI=<abi>
# e depois copia libs/<abi>/libretro.so -> jgenesis_libretro_android.so
# (o nome do artefato vem do workflow; renomeie para retro8_voxel_libretro_android.so).

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE  := retro
LOCAL_SRC_FILES := ../retro8_voxel.c
LOCAL_CFLAGS  := -O3 -ffast-math -fvisibility=hidden
LOCAL_LDLIBS  := -lm -ldl
LOCAL_LDFLAGS := -Wl,-z,max-page-size=16384

include $(BUILD_SHARED_LIBRARY)
