# Flutter Playground
<!-- ALL-CONTRIBUTORS-BADGE:START - Do not remove or modify this section -->
[![All Contributors](https://img.shields.io/badge/all_contributors-3-orange.svg?style=flat-square)](#contributors-)
<!-- ALL-CONTRIBUTORS-BADGE:END -->

[![Codacy Badge](https://api.codacy.com/project/badge/Grade/ae27cc3a3b32499cbf4c6d1614719c6f)](https://app.codacy.com/app/ibhavikmakwana/FlutterPlayground?utm_source=github.com&utm_medium=referral&utm_content=ibhavikmakwana/FlutterPlayground&utm_campaign=Badge_Grade_Dashboard)
[![Codemagic build status](https://api.codemagic.io/apps/5d0de80099fdb700102145c9/5d0de80099fdb700102145c8/status_badge.svg)](https://codemagic.io/apps/5d0de80099fdb700102145c9/5d0de80099fdb700102145c8/latest_build)
[![Say Thanks!](https://img.shields.io/badge/Say%20Thanks-!-1EAEDB.svg)](https://saythanks.io/to/ibhavikmakwana) 

Playground app for Flutter.
Contains examples to quickly learn and tinker around with various features.
Consider Contributing if you find this project helpful.

> **This is a maintained fork.** The original project by
> [Bhavik Makwana](https://github.com/ibhavikmakwana/FlutterPlayground) stopped receiving
> updates in 2021 and no longer compiled with current toolchains. This fork brings it back to
> life on Flutter 3.44 / Dart 3, keeping the original MIT license and authorship intact.
>
> **2026 revival maintained by Claudney Sarti Sessa** — Senior Developer
> · [claudneysartisessa@gmail.com](mailto:claudneysartisessa@gmail.com)
> · [LinkedIn](https://www.linkedin.com/in/claudneysessa)
> · [GitHub](https://github.com/claudneysessa)

[<img src="./icons/Google-Play-Store-Logo.png" height="100" alt="Screenshot"/>](https://play.google.com/store/apps/details?id=com.ibhavikmakwana.flutterplayground)

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
| `flutter test` | 17/17 passing |
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
- Test suite added (17 unit and widget tests), plus two long-standing bugs fixed along the
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

Hit me on

<a href="https://twitter.com/ibhavikmakwana"><img src="./icons/twitter-icon.png?raw=true" width="60"></a>
<a href="https://medium.com/@ibhavikmakwana"><img src="./icons/medium-icon.png?raw=true" width="60"></a>
<a href="https://www.linkedin.com/in/ibhavikmakwana/"><img src="./icons/linkedin-icon.png?raw=true" width="60"></a>

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

Released under the MIT license by Bhavik Makwana. This fork keeps the same license and the
original copyright notice unchanged; changes made during the 2026 revival are contributed
under those same terms.

    Copyright (c) 2020 Bhavik Makwana
    
    Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
    
    The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
    
    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

## Contributors ✨

Thanks goes to these wonderful people ([emoji key](https://allcontributors.org/docs/en/emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
  <tr>
    <td align="center"><a href="http://prasadsunny1.dev"><img src="https://avatars.githubusercontent.com/u/11705392?v=4?s=100" width="100px;" alt=""/><br /><sub><b>sanni prasad</b></sub></a><br /><a href="https://github.com/ibhavikmakwana/FlutterPlayground/commits?author=prasadsunny1" title="Code">💻</a></td>
    <td align="center"><a href="https://github.com/dhuma1981"><img src="https://avatars.githubusercontent.com/u/298484?v=4?s=100" width="100px;" alt=""/><br /><sub><b>Dhrumil Shah</b></sub></a><br /><a href="https://github.com/ibhavikmakwana/FlutterPlayground/commits?author=dhuma1981" title="Code">💻</a></td>
    <td align="center"><a href="https://github.com/EdgarFabiano"><img src="https://avatars.githubusercontent.com/u/11666921?v=4?s=100" width="100px;" alt=""/><br /><sub><b>Edgar Fabiano De Souza Filho</b></sub></a><br /><a href="https://github.com/ibhavikmakwana/FlutterPlayground/commits?author=EdgarFabiano" title="Code">💻</a></td>
  </tr>
</table>

<!-- markdownlint-restore -->
<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the [all-contributors](https://github.com/all-contributors/all-contributors) specification. Contributions of any kind welcome!