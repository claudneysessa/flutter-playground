# Changelog

Todas as mudanças relevantes deste projeto são documentadas neste arquivo a partir da retomada
da manutenção (fork `claudneysessa/flutter-playground`).

O formato segue [Keep a Changelog](https://keepachangelog.com/pt-BR/1.1.0/) e o versionamento
segue [Semantic Versioning](https://semver.org/lang/pt-BR/).

## [2.0.0] - 2026-08-13

Reativação do projeto. O código estava parado desde maio de 2021 (Flutter 2.x / Dart 2.12) e
não compilava mais: `flutter pub get` falhava já na resolução de dependências. Agora o app
compila, analisa e roda sobre **Flutter 3.44.6 / Dart 3.12.2**.

A versão foi elevada para 2.0.0 porque houve remoção de funcionalidades e mudança de plataforma
mínima suportada.

### Adicionado

- Suíte de testes (`test/`) com 14 testes de unidade e de widget cobrindo `ThemeStore`,
  `MyHomePageStore`, `DefaultRoutes`, `ExampleNameItem` e a home (`MyApp`).
- Teste que garante que todo exemplo listado na home possui rota registrada.
- Manifests Android de `debug` e `profile`, `values-night/styles.xml` e
  `drawable-v21/launch_background.xml`.
- `queries` no `AndroidManifest.xml` para o `url_launcher` abrir links `https` no Android 11+.
- Fallback para navegador externo na tela de licenças nas plataformas sem WebView.

### Alterado

- `environment.sdk` de `>=2.12.0 <3.0.0` para `>=3.5.0 <4.0.0`; `flutter` mínimo `>=3.27.0`.
- Dependências: `google_fonts` 2.1 → 8.2, `provider` 5 → 6, `webview_flutter` 2 → 4,
  `quick_actions` 0.6 → 1.0, `url_launcher` 6.0.3 → 6.3, `mobx` 2.0 → 2.3,
  `flutter_mobx` 2.0 → 2.2, `cupertino_icons` 1.0.3 → 1.0.8, `build_runner` 2.0 → 2.4,
  `mobx_codegen` 2.0 → 2.7, `lint` 1.5 → 2.3.
- Tema migrado para Material 3 com `ColorScheme.fromSeed`.
- `TextTheme`: `headline4` → `headlineMedium`, `headline6` → `titleLarge`,
  `subtitle1` → `titleMedium`; `ThemeData.accentColor` → `colorScheme.secondary`.
- `AppBar.textTheme` → `AppBar.titleTextStyle`.
- `ElevatedButton`/`TextButton.styleFrom`: `primary` → `backgroundColor`/`foregroundColor` e
  `onSurface` → `disabledForegroundColor`.
- `AnimatedSize` não recebe mais `vsync`.
- `DragTarget.onAccept` → `onAcceptWithDetails`.
- Exemplo de teclado migrado de `RawKeyboardListener`/`RawKeyEvent` para
  `KeyboardListener`/`KeyEvent`, exibindo dados de `HardwareKeyboard`.
- Tela de licenças migrada para a API 4 do `webview_flutter`
  (`WebViewController` + `WebViewWidget`).
- `url_launcher`: `canLaunch`/`launch` → `launchUrl`.
- Classe `NavigationDrawer` renomeada para `NavigationDrawerExample` — o nome passou a colidir
  com o widget `NavigationDrawer` do Material 3; arquivo renomeado para `snake_case`.
- `Color.withOpacity` → `withValues`.
- Android: Gradle 7.1 → 9.1, AGP 4.1.3 → 9.0.1, Kotlin 1.4.20 → 2.3.20, Java 17, scripts
  migrados de Groovy para Kotlin DSL, `jcenter` removido, `AndroidManifest` no formato AGP 8+.
- Android: a assinatura de release passou a ser opcional — sem `android/key.properties` o build
  usa as chaves de debug, então `flutter build apk` funciona em qualquer clone.
- iOS: deployment target 8.0 → 13.0 e Swift 4.0 → 5.0.
- Web: `index.html` migrado para o bootstrap atual (`flutter_bootstrap.js`); título e descrição
  do app corrigidos no `index.html` e no `manifest.json`.
- `.metadata` atualizado para o canal `stable` com `project_type` e seção `migration`.
- `kotlin.incremental=false` no Android: com a compilação incremental ligada, o Kotlin 2.3 falha
  ao fechar os caches (`Could not close incremental caches ... caches-jvm`) ao compilar os
  módulos dos plugins neste projeto no Windows.
- `.gitignore` alinhado ao template atual do Flutter.

### Removido

- `firebase_core` e `firebase_analytics`. O repositório nunca versionou `google-services.json`,
  então o build Android quebrava no plugin `google-services`, e a telemetria não agrega a um app
  de exemplos.
- Exemplo Flare e o asset `assets/GoogleSantaTracker.flr` — `flare_flutter` foi descontinuado e
  não suporta Dart 3.
- Arquivos 100% comentados desde 2020: `admob_example.dart`, `LocalAuth.dart` e
  `GoogleMapsExample.dart`, junto com as constantes, exports e rotas mortas correspondentes.
- `lib/generated_plugin_registrant.dart`, que hoje é gerado pela própria ferramenta.

### Corrigido

- O item "AdMob Plugin Example" aparecia na home sem rota registrada: tocar nele não levava a
  lugar nenhum. A entrada foi removida e um teste agora impede a regressão.
- O callback `onTap` de `ExampleNameItem` era declarado e nunca chamado.
- `WidgetsBinding.instance!` (asserção nula desnecessária desde o Flutter 3) no exemplo de
  ciclo de vida.
- `ProgressButton`: sair da tela com a animação ou o timer de 3300 ms pendentes disparava
  `setState() called after dispose()`. O timer agora é cancelado no `dispose`, os callbacks
  checam `mounted` e o `AnimationController` é descartado antes do `super.dispose()` — sem o
  `late`, que quebrava ao sair da tela sem nunca ter apertado o botão.

### Notas

- Plataformas suportadas: Android, iOS e Web. O build de iOS não pôde ser validado na máquina
  usada na migração (Windows); verifique em macOS antes de publicar.
- O repositório versiona `android/app/key.jks` e backups de chaves desde 2021. O `.gitignore`
  passou a bloquear novos keystores, mas os arquivos já existentes continuam no histórico do
  Git e devem ser considerados comprometidos.

---

## [1.2.7+10] - 2021-05-17

Último estado publicado antes da retomada. Registrado aqui apenas como marco histórico.

- Busca de exemplos na tela inicial
- Ajustes de UI/UX
- Correções menores
