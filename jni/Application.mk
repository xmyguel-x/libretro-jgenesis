# Configuracao do ndk-build para o core Retro8 Voxel 3D.
# O workflow passa APP_ABI=<abi> na linha de comando (isso sobrescreve aqui).
APP_ABI     := armeabi-v7a arm64-v8a x86 x86_64
APP_PLATFORM := android-24
APP_STL     := none
APP_OPTIM   := release
