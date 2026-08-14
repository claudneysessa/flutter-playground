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

## Status

This fork was revived in August 2026. The original code targeted Flutter 2.x / Dart 2.12
and no longer compiled. It now builds against **Flutter 3.44.x / Dart 3.12.x**.

What changed at a high level (see [CHANGELOG.md](CHANGELOG.md) for the details):

- Firebase Analytics/Core removed — the repository never contained a `google-services.json`,
  so the Android build could not complete.
- Flare example removed — `flare_flutter` is discontinued and does not support Dart 3.
  The Google Maps, AdMob and Local Auth files were fully commented out and were removed too.
- WebView migrated to `webview_flutter` 4 (`WebViewController` + `WebViewWidget`), with a
  fallback to the external browser on platforms without a WebView implementation.
- Android toolchain regenerated: Gradle 9.1, AGP 9.0.1, Kotlin 2.3, Kotlin DSL, Java 17.
- Material 3 theme, `TextTheme` and button APIs updated, keyboard example migrated from
  `RawKeyboardListener` to `KeyboardListener`.

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

## License

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