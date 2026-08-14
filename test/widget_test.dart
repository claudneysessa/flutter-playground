// Smoke test do app: monta o MyApp completo (tema MobX + Provider) e navega
// para um dos exemplos.

import 'package:flutter/material.dart';
import 'package:flutter_playground/my_app.dart';
import 'package:flutter_playground/store/theme_store.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

Widget buildApp() => Provider<ThemeStore>(
      create: (_) => ThemeStore(),
      child: const MyApp(),
    );

void main() {
  setUpAll(() {
    // Evita qualquer download de fonte durante os testes.
    GoogleFonts.config.allowRuntimeFetching = false;
  });

  testWidgets('home page lists the examples', (WidgetTester tester) async {
    await tester.pumpWidget(buildApp());
    await tester.pump();

    expect(find.text('Flutter Playground'), findsWidgets);
    expect(find.text('App Bar'), findsOneWidget);
    expect(find.byIcon(Icons.search), findsOneWidget);
    expect(find.byIcon(Icons.menu), findsOneWidget);
  });

  testWidgets('floating action button toggles the theme',
      (WidgetTester tester) async {
    await tester.pumpWidget(buildApp());
    await tester.pump();

    expect(
      tester.widget<MaterialApp>(find.byType(MaterialApp)).themeMode,
      ThemeMode.light,
    );

    await tester.tap(find.byType(FloatingActionButton));
    await tester.pump();

    expect(
      tester.widget<MaterialApp>(find.byType(MaterialApp)).themeMode,
      ThemeMode.dark,
    );
  });

  testWidgets('tapping an example opens its route',
      (WidgetTester tester) async {
    await tester.pumpWidget(buildApp());
    await tester.pump();

    final Finder example = find.text('Stepper Example');
    await tester.ensureVisible(example);
    await tester.pumpAndSettle();
    await tester.tap(example);
    await tester.pumpAndSettle();

    expect(find.byType(Stepper), findsOneWidget);
  });

  testWidgets('search delegate filters the examples',
      (WidgetTester tester) async {
    await tester.pumpWidget(buildApp());
    await tester.pump();

    await tester.tap(find.byIcon(Icons.search));
    await tester.pumpAndSettle();

    await tester.enterText(find.byType(TextField), 'wrap');
    await tester.testTextInput.receiveAction(TextInputAction.done);
    await tester.pumpAndSettle();

    expect(find.text('Wrap Example'), findsWidgets);
  });
}
