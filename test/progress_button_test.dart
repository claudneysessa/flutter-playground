import 'package:flutter/material.dart';
import 'package:flutter_playground/ui/progressbutton/ProgressButton.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ProgressButton', () {
    testWidgets('shows the progress indicator after being pressed',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: ProgressButton(title: 'Progress Button')),
      );

      expect(find.text('Click Here'), findsOneWidget);

      await tester.tap(find.text('Click Here'));
      await tester.pump();

      expect(find.byType(CircularProgressIndicator), findsOneWidget);

      // Deixa a animação e o timer de 3300ms terminarem.
      await tester.pump(const Duration(seconds: 4));
      expect(find.byIcon(Icons.check), findsOneWidget);
    });

    testWidgets('leaving the screen before the timer fires does not throw',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (BuildContext context) => Scaffold(
              body: Center(
                child: ElevatedButton(
                  onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute<void>(
                      builder: (_) =>
                          const ProgressButton(title: 'Progress Button'),
                    ),
                  ),
                  child: const Text('abrir'),
                ),
              ),
            ),
          ),
        ),
      );

      await tester.tap(find.text('abrir'));
      await tester.pumpAndSettle();

      await tester.tap(find.text('Click Here'));
      await tester.pump();

      // Sai da tela com a animação e o timer ainda pendentes: o estado é
      // descartado e nenhum setState() pode acontecer depois disso.
      await tester.pageBack();
      await tester.pumpAndSettle();
      await tester.pump(const Duration(seconds: 4));

      expect(tester.takeException(), isNull);
      expect(find.text('abrir'), findsOneWidget);
    });

    testWidgets('disposing without pressing does not throw',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: ProgressButton(title: 'Progress Button')),
      );
      await tester.pumpWidget(const MaterialApp(home: SizedBox()));

      expect(tester.takeException(), isNull);
    });
  });
}
