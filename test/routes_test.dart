import 'package:flutter/material.dart';
import 'package:flutter_playground/models/ExapmleNames.dart';
import 'package:flutter_playground/ui_ux/home_page/my_home_page_store.dart';
import 'package:flutter_playground/values/routes.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DefaultRoutes', () {
    test('every example listed on the home page has a registered route', () {
      final MyHomePageStore store = MyHomePageStore()..initList();
      final Map<String, WidgetBuilder> routes = DefaultRoutes.routes();

      final List<String> missing = store.exampleList
          .map((ExampleNames example) => '/${example.title}')
          .where((String route) => !routes.containsKey(route))
          .toList();

      expect(missing, isEmpty,
          reason: 'Exemplos sem rota registrada: $missing');
    });

    test('route names are unique and start with a slash', () {
      final Map<String, WidgetBuilder> routes = DefaultRoutes.routes();

      expect(routes, isNotEmpty);
      expect(
          routes.keys.every((String route) => route.startsWith('/')), isTrue);
      expect(routes.keys.toSet().length, routes.length);
    });
  });
}
