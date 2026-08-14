import 'package:flutter_playground/models/ExapmleNames.dart';
import 'package:flutter_playground/ui_ux/home_page/my_home_page_store.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MyHomePageStore', () {
    test('initList populates the example list', () {
      final MyHomePageStore store = MyHomePageStore();
      expect(store.exampleList, isEmpty);

      store.initList();

      expect(store.exampleList, isNotEmpty);
      expect(
        store.exampleList.map((ExampleNames e) => e.title),
        contains('App Bar'),
      );
    });

    test('search matches titles case-insensitively', () {
      final MyHomePageStore store = MyHomePageStore()..initList();

      store.search('cupertino');

      expect(store.searchResult, isNotEmpty);
      expect(
        store.searchResult.every(
          (ExampleNames e) => e.title.toLowerCase().contains('cupertino'),
        ),
        isTrue,
      );
    });

    test('search with no match keeps the result list empty', () {
      final MyHomePageStore store = MyHomePageStore()..initList();

      store.search('there-is-no-such-example');

      expect(store.searchResult, isEmpty);
    });
  });
}
