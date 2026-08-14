import 'package:flutter/material.dart';
import 'package:flutter_playground/store/theme_store.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobx/mobx.dart';

void main() {
  group('ThemeStore', () {
    test('starts in light mode', () {
      expect(ThemeStore().themeMode, ThemeMode.light);
    });

    test('changeTheme toggles between light and dark', () {
      final ThemeStore store = ThemeStore();

      store.changeTheme();
      expect(store.themeMode, ThemeMode.dark);

      store.changeTheme();
      expect(store.themeMode, ThemeMode.light);
    });

    test('reactions are notified on change', () {
      final ThemeStore store = ThemeStore();
      final List<ThemeMode> observed = <ThemeMode>[];

      final ReactionDisposer dispose =
          autorun((_) => observed.add(store.themeMode));
      store.changeTheme();
      dispose();

      expect(observed, <ThemeMode>[ThemeMode.light, ThemeMode.dark]);
    });
  });
}
