// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_home_page_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MyHomePageStore on _MyHomePageStore, Store {
  late final _$exampleListAtom =
      Atom(name: '_MyHomePageStore.exampleList', context: context);

  @override
  ObservableList<ExampleNames> get exampleList {
    _$exampleListAtom.reportRead();
    return super.exampleList;
  }

  @override
  set exampleList(ObservableList<ExampleNames> value) {
    _$exampleListAtom.reportWrite(value, super.exampleList, () {
      super.exampleList = value;
    });
  }

  late final _$searchResultAtom =
      Atom(name: '_MyHomePageStore.searchResult', context: context);

  @override
  ObservableList<ExampleNames> get searchResult {
    _$searchResultAtom.reportRead();
    return super.searchResult;
  }

  @override
  set searchResult(ObservableList<ExampleNames> value) {
    _$searchResultAtom.reportWrite(value, super.searchResult, () {
      super.searchResult = value;
    });
  }

  late final _$_MyHomePageStoreActionController =
      ActionController(name: '_MyHomePageStore', context: context);

  @override
  void search(String query) {
    final _$actionInfo = _$_MyHomePageStoreActionController.startAction(
        name: '_MyHomePageStore.search');
    try {
      return super.search(query);
    } finally {
      _$_MyHomePageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void initList() {
    final _$actionInfo = _$_MyHomePageStoreActionController.startAction(
        name: '_MyHomePageStore.initList');
    try {
      return super.initList();
    } finally {
      _$_MyHomePageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
exampleList: ${exampleList},
searchResult: ${searchResult}
    ''';
  }
}
