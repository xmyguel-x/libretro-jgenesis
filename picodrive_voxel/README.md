# PicoDrive Voxel 3D (ARMv7 / 32-bit)

Protótipo de wrapper Libretro que recebe o framebuffer de um core PicoDrive e o reconstrói como uma cena voxel 3D em software.

## Arquitetura

`ROM Mega Drive` → `PicoDrive original` → `PicoDrive Voxel wrapper` → `framebuffer voxel 3D` → `RetroArch`

O wrapper procura, na mesma pasta do seu próprio arquivo, um core interno chamado:

- Android: `picodrive_libretro_android.so`
- Linux: `picodrive_libretro.so`

O core interno precisa ser uma compilação compatível do PicoDrive para a mesma arquitetura. O wrapper não contém nem redistribui o PicoDrive.

## Estado atual

- [x] Base inicial do wrapper Libretro derivada do renderizador voxel experimental já existente neste repositório.
- [x] Captura de vídeo RGB565, 0RGB1555 e XRGB8888.
- [x] Renderização voxel por software, sem exigir OpenGL.
- [x] Controles básicos encaminhados ao core interno.
- [x] Branch e pipeline Android ARMv7 separados do projeto Retro8.
- [ ] Teste com o binário real do PicoDrive no RetroArch.
- [ ] Otimização de desempenho para ARMv7.
- [ ] Ajustes de resolução, câmera e qualidade voxel.

## Compilar

O workflow `.github/workflows/picodrive-voxel-armv7.yml` compila o wrapper para `armeabi-v7a` (32-bit) usando o Android NDK e publica o arquivo como artifact.

**Importante:** o artifact gerado é o wrapper. Para executar jogos, também será necessário fornecer o arquivo do core PicoDrive original com o nome indicado acima. Não renomeie o wrapper para o nome do core interno.

## Limitações deste primeiro protótipo

- É um wrapper que carrega um segundo core por `dlopen`, não uma integração interna do código-fonte do PicoDrive.
- O suporte a bibliotecas dinâmicas pode variar conforme a configuração do Android/RetroArch.
- A voxelização por pixel pode ser pesada em CPUs ARMv7. O primeiro build serve para validar compilação e carregamento; desempenho ainda precisa ser medido em aparelho real.
- A resolução de captura foi ampliada para até 512×512, mas modos maiores são ignorados.

## Licença

Este trabalho mantém a licença GPL-3.0 do repositório-base. Consulte também a licença e os avisos do core PicoDrive que você utilizar.
