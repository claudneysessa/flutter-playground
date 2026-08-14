import 'package:flutter/material.dart';
import 'package:flutter_playground/ExampleNameItem.dart';
import 'package:flutter_playground/models/ExapmleNames.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ExampleNameItem', () {
    testWidgets('renders the example title', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ExampleNameItem(exampleNames: ExampleNames('App Bar')),
          ),
        ),
      );

      expect(find.text('App Bar'), findsOneWidget);
      expect(find.byIcon(Icons.chevron_right), findsOneWidget);
    });

    testWidgets('tapping navigates to the matching route and fires onTap',
        (WidgetTester tester) async {
      ExampleNames? tapped;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ExampleNameItem(
              exampleNames: ExampleNames('App Bar'),
              onTap: (ExampleNames example) => tapped = example,
            ),
          ),
          routes: <String, WidgetBuilder>{
            '/App Bar': (BuildContext context) =>
                const Scaffold(body: Text('destino')),
          },
        ),
      );

      await tester.tap(find.text('App Bar'));
      await tester.pumpAndSettle();

      expect(tapped?.title, 'App Bar');
      expect(find.text('destino'), findsOneWidget);
    });
  });
}
