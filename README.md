# Build host do Retro8 Voxel 3D

Este fork existe apenas como **host de build (CI)** do core
[Retro8 Voxel 3D](https://github.com/xmyguel-x/retro8_voxel) — o wrapper libretro do retro8 (PICO-8).

- `retro8_voxel.c` — código-fonte do core (copiado do repositório principal)
- `jni/Android.mk`, `jni/Application.mk` — harness de build Android (`ndk-build`) escrito para este core
- `Makefile.libretro`, `Cargo.toml`, `src/lib.rs` — apenas para satisfazer os demais jobs do CI

O job `android` do workflow compila o core com o NDK e gera `libs/<abi>/libretro.so`,
copiado para `jgenesis_libretro_android.so` e publicado como artefato
(`jgenesis_libretro-android-arm64-v8a`). Renomeie para `retro8_voxel_libretro_android.so`.

Repositório principal: https://github.com/xmyguel-x/retro8_voxel
