# JGenesis build workspace

Esta pasta foi criada para organizar a saída da compilação Android ARMv7 (32 bits) do Retro8 Voxel.

- O workflow fica em `.github/workflows/retro8-voxel-armv7.yml`, pois o GitHub Actions só descobre workflows nessa pasta.
- O código-fonte usado é `../retro8_voxel.c`, apontado por `jni/Android.mk`.
- Durante a compilação, o arquivo gerado é colocado aqui como `retro8_voxel_libretro_android.so`.
- O binário é publicado como artefato do GitHub Actions, não é gravado no repositório.

**Importante:** Retro8 Voxel é um wrapper. Para funcionar, o núcleo interno compatível `retro8_libretro_android.so` também precisa estar disponível ao RetroArch na mesma pasta de cores.
