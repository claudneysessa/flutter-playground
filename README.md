# Flutter Playground
<!-- ALL-CONTRIBUTORS-BADGE:START - Do not remove or modify this section -->
[![All Contributors](https://img.shields.io/badge/all_contributors-5-orange.svg?style=flat-square)](#contributors-)
<!-- ALL-CONTRIBUTORS-BADGE:END -->

[![Flutter](https://img.shields.io/badge/Flutter-3.44.6-02569B?style=flat-square&logo=flutter&logoColor=white)](https://docs.flutter.dev/release/release-notes)
[![Dart](https://img.shields.io/badge/Dart-3.12.2-0175C2?style=flat-square&logo=dart&logoColor=white)](https://dart.dev/guides/language/evolution)
[![Platforms](https://img.shields.io/badge/platforms-Android%20%7C%20iOS%20%7C%20Web-lightgrey?style=flat-square)](#build-status)
[![Tests](https://img.shields.io/badge/tests-18%20passing-brightgreen?style=flat-square)](test)
[![License](https://img.shields.io/github/license/claudneysessa/flutter-playground?style=flat-square)](LICENSE)
[![Last commit](https://img.shields.io/github/last-commit/claudneysessa/flutter-playground?style=flat-square)](https://github.com/claudneysessa/flutter-playground/commits/master)

Playground app for Flutter.
Contains examples to quickly learn and tinker around with various features.
Consider Contributing if you find this project helpful.

> **This is a maintained fork.** The original project by
> [Bhavik Makwana](https://github.com/ibhavikmakwana/FlutterPlayground) stopped receiving
> updates in 2021 and no longer compiled with current toolchains. This fork brings it back to
> life on Flutter 3.44 / Dart 3, keeping the original license and authorship intact.
>
> **2026 revival maintained by Claudney Sarti Sessa** — Senior Developer
> · [claudneysartisessa@gmail.com](mailto:claudneysartisessa@gmail.com)
> · [LinkedIn](https://www.linkedin.com/in/claudneysessa)
> · [GitHub](https://github.com/claudneysessa)

## Preview

| Home | App bar | Navigation Drawer |
| ------------------ | --------------------------- | ------------------ |
| <img src="./preview/home.png" height="400" alt="Screenshot"/>  | <img src="./preview/appbar.png" height="400" alt="Screenshot"/> | <img src="./preview/navigation_drawer.png" height="400" alt="Screenshot"/> |


| Left Navigation Drawer | Right Navigation Drawer | Right Navigation Drawer |
| ------------------ | --------------------------- | ------------------ |
| <img src="./preview/nav_drawer_left.png" height="400" alt="Screenshot"/>  | <img src="./preview/nav_drawer_right.png" height="400" alt="Screenshot"/> | <img src="./preview/nav_drawer_right_two.png" height="400" alt="Screenshot"/> |


| Text Span | Text Underline | AboutListTile |
| ------------------ | ------------------ | ------------------ |
| <img src="./preview/text_span.png" height="400" alt="Screenshot"/>  | <img src="./preview/text_underline.png" height="400" alt="Screenshot"/>  | <img src="./preview/about_list_tile.png" height="400" alt="Screenshot"/>  |

| Rotated Box | Grid Paper | Expansion Tile |
| ------------------ | ------------------ | ------------------ |
| <img src="./preview/rotated_box.png" height="400" alt="Screenshot"/>  | <img src="./preview/GridPaper.jpg" height="400" alt="Screenshot"/>  | <img src="./preview/expansion_tile.png" height="400" alt="Screenshot"/>  |

| BackdropFilter |
| ------------------ |
| <img src="./preview/backdrop_filter.png" height="400" alt="Screenshot"/>  |

| Collapsible Toolbar | Bottom Navigation | Animated Icons |
| ------------------ | --------------------------- | ------------------ |
| <img src="./preview/collapsing_app_bar.gif" height="400" alt="Screenshot"/>  | <img src="./preview/bottom_nav_bar.gif" height="400" alt="Screenshot"/> | <img src="./preview/animated_icons.gif" height="400" alt="Screenshot"/> |


| Animated Size | Progress Button | Staggered Animation |
| ------------------ | --------------------------- | ------------------ |
| <img src="./preview/animated_size.gif" height="400" alt="Screenshot"/>  | <img src="./preview/progress_button.gif" height="400" alt="Screenshot"/> | <img src="./preview/staggered_animation.gif" height="400" alt="Screenshot"/> |


| Tab bar | List to Grid | Hardware clicks |
| ------------------ | --------------------------- | ------------------ |
| <img src="./preview/tab_bar.gif" height="400" alt="Screenshot"/>  | <img src="./preview/ListGrid.gif" height="400" alt="Screenshot"/> | <img src="./preview/Hardware.gif" height="400" alt="Screenshot"/> |

| AnimatedSwitcher | Nested List | Rotation Transition |
| ------------------ | ------------------ | ------------------ |
| <img src="./preview/AnimatedSwitcher.gif" height="400" alt="Screenshot"/>  | <img src="./preview/nested_list.gif" height="400" alt="Screenshot"/>  | <img src="./preview/RotationTransition.gif" height="400" alt="Screenshot"/>  |

> The Google Maps and Flare examples were removed during the 2026 migration and are no longer
> part of the app.

## Build status

App version **2.0.0+11**, revived on **2026-08-13** by
[Claudney Sarti Sessa](https://www.linkedin.com/in/claudneysessa).

| Component | Before (2021) | Now |
| --- | --- | --- |
| Flutter | 2.x (beta channel) | **3.44.6** (stable) |
| Dart | 2.12 | **3.12.2** |
| Gradle | 7.1 | **9.1.0** |
| Android Gradle Plugin | 4.1.3 | **9.0.1** |
| Kotlin | 1.4.20 | **2.3.20** |
| Java / JVM target | 8 | **17** |
| Android `compileSdk` / `targetSdk` | 32 | **36** |
| Android `minSdk` | 20 | **24** |
| iOS deployment target | 8.0 | **13.0** |
| Gradle DSL | Groovy | Kotlin DSL |
| Material | Material 2 | **Material 3** |

Verified on this revival:

| Check | Result |
| --- | --- |
| `flutter analyze` | No issues found |
| `flutter test` | 18/18 passing |
| `flutter build web --release` | Success |
| `flutter build apk --debug` | Success |
| Runtime | Running on a physical Android 16 device |

## What changed in the 2026 revival

The project had been untouched since May 2021: `flutter pub get` failed on dependency
resolution, and 33 compilation errors waited behind it. High level summary — see
[CHANGELOG.md](CHANGELOG.md) for the full list:

- Firebase Analytics/Core removed — the repository never contained a `google-services.json`,
  so the Android build could not complete.
- Flare example removed — `flare_flutter` is discontinued and does not support Dart 3.
  The Google Maps, AdMob and Local Auth files were fully commented out and were removed too.
- WebView migrated to `webview_flutter` 4 (`WebViewController` + `WebViewWidget`), with a
  fallback to the external browser on platforms without a WebView implementation.
- Android toolchain regenerated: Gradle 9.1, AGP 9.0.1, Kotlin 2.3, Kotlin DSL, Java 17.
- Material 3 theme, `TextTheme` and button APIs updated, keyboard example migrated from
  `RawKeyboardListener` to `KeyboardListener`.
- Test suite added (18 unit and widget tests), plus two long-standing bugs fixed along the
  way: an example listed on the home screen with no route behind it, and a
  `setState() called after dispose()` crash in the Progress Button example.

Supported platforms: **Android, iOS and Web**. iOS was updated to a minimum deployment target
of 13.0 but could not be built on the machine used for the migration (Windows) — verify it on
macOS before shipping.

## Getting Started

Requirements: Flutter 3.27 or newer (validated on 3.44.6), Dart 3.5+, JDK 17+ and the
Android SDK for Android builds.

```bash
flutter pub get
dart run build_runner build      # regenerates the MobX *.g.dart files
flutter analyze
flutter test
flutter run                      # or: flutter run -d chrome
```

For help getting started with Flutter, view online
[documentation](https://flutter.dev/).

## Contribute
1. Fork the the project
2. Create your feature branch (git checkout -b my-new-feature)
3. Make required changes and commit (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create new Pull Request

## Questions?🤔

**About this fork** — Claudney Sarti Sessa

<a href="https://www.linkedin.com/in/claudneysessa"><img src="./icons/linkedin-icon.png?raw=true" width="60" height="60" alt="LinkedIn"></a>
&nbsp;[claudneysartisessa@gmail.com](mailto:claudneysartisessa@gmail.com)
&nbsp;·&nbsp;[github.com/claudneysessa](https://github.com/claudneysessa)

**About the original project** — Bhavik Makwana

<a href="https://twitter.com/ibhavikmakwana"><img src="./icons/twitter-icon.png?raw=true" width="60" height="60" alt="Twitter"></a>
<a href="https://medium.com/@ibhavikmakwana"><img src="./icons/medium-icon.png?raw=true" width="60" height="60" alt="Medium"></a>
<a href="https://www.linkedin.com/in/ibhavikmakwana/"><img src="./icons/linkedin-icon.png?raw=true" width="60" height="60" alt="LinkedIn"></a>

## Donate

> If you found this project helpful or you learned something from the source code and want to thank me, consider buying me a cup of :coffee:
>
> - [PayPal](https://www.paypal.me/ibhavikmakwana)
> - Google Pay **(bhavikmakwana43@okhdfcbank)**

## Maintainers

| Role | Who |
| --- | --- |
| Original author | [Bhavik Makwana](https://github.com/ibhavikmakwana) — created the project and every example in it |
| Fork maintainer (2026 revival) | **Claudney Sarti Sessa**, Senior Developer — [email](mailto:claudneysartisessa@gmail.com) · [LinkedIn](https://www.linkedin.com/in/claudneysessa) · [GitHub](https://github.com/claudneysessa) |

The 2026 revival covers the Flutter 3.44 / Dart 3 migration, the Android and iOS toolchain
upgrade, the Material 3 theme, the test suite and the [CHANGELOG](CHANGELOG.md). Credit for
the app itself and for its examples belongs to the original author and to the contributors
listed below.

## License

**BSD 2-Clause**, `Copyright (c) 2021, Bhavik Makwana` — see [LICENSE](LICENSE) for the full
text. This fork keeps the license and the original copyright notice unchanged; changes made
during the 2026 revival are contributed under those same terms.

> Note: until this revival, this section of the README reproduced an MIT notice while the
> `LICENSE` file in the repository has always been BSD 2-Clause. The `LICENSE` file is the
> authoritative one, so the README was corrected to match it rather than the other way around.

## Contributors ✨

Thanks goes to these wonderful people ([emoji key](https://allcontributors.org/docs/en/emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
  <tbody>
    <tr>
      <td align="center" valign="top" width="20%"><a href="https://github.com/ibhavikmakwana"><img src="https://avatars.githubusercontent.com/u/22465800?s=100" width="100" height="100" alt="Bhavik Makwana"/><br /><sub><b>Bhavik Makwana</b></sub></a><br /><sub>Original author</sub><br /><a href="https://github.com/ibhavikmakwana/FlutterPlayground/commits?author=ibhavikmakwana" title="Code">💻</a> <a href="#design" title="Design">🎨</a> <a href="#ideas" title="Ideas">🤔</a></td>
      <td align="center" valign="top" width="20%"><a href="https://github.com/claudneysessa"><img src="https://avatars.githubusercontent.com/u/12506432?s=100" width="100" height="100" alt="Claudney Sarti Sessa"/><br /><sub><b>Claudney Sarti Sessa</b></sub></a><br /><sub>2026 revival</sub><br /><a href="https://github.com/claudneysessa/flutter-playground/commits?author=claudneysessa" title="Code">💻</a> <a href="https://github.com/claudneysessa/flutter-playground/commits?author=claudneysessa" title="Documentation">📖</a> <a href="#maintenance" title="Maintenance">🚧</a> <a href="test" title="Tests">⚠️</a></td>
      <td align="center" valign="top" width="20%"><a href="https://github.com/prasadsunny1"><img src="https://avatars.githubusercontent.com/u/11705392?s=100" width="100" height="100" alt="sanni prasad"/><br /><sub><b>sanni prasad</b></sub></a><br /><sub>&nbsp;</sub><br /><a href="https://github.com/ibhavikmakwana/FlutterPlayground/commits?author=prasadsunny1" title="Code">💻</a></td>
      <td align="center" valign="top" width="20%"><a href="https://github.com/dhuma1981"><img src="https://avatars.githubusercontent.com/u/298484?s=100" width="100" height="100" alt="Dhrumil Shah"/><br /><sub><b>Dhrumil Shah</b></sub></a><br /><sub>&nbsp;</sub><br /><a href="https://github.com/ibhavikmakwana/FlutterPlayground/commits?author=dhuma1981" title="Code">💻</a></td>
      <td align="center" valign="top" width="20%"><a href="https://github.com/EdgarFabiano"><img src="https://avatars.githubusercontent.com/u/11666921?s=100" width="100" height="100" alt="Edgar Fabiano De Souza Filho"/><br /><sub><b>Edgar Fabiano De Souza Filho</b></sub></a><br /><sub>&nbsp;</sub><br /><a href="https://github.com/ibhavikmakwana/FlutterPlayground/commits?author=EdgarFabiano" title="Code">💻</a></td>
    </tr>
  </tbody>
</table>

<!-- markdownlint-restore -->
<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the [all-contributors](https://github.com/all-contributors/all-contributors) specification. Contributions of any kind welcome!