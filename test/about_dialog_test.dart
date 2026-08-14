import 'package:flutter/material.dart';
import 'package:flutter_playground/my_app.dart';
import 'package:flutter_playground/store/theme_store.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  setUpAll(() {
    GoogleFonts.config.allowRuntimeFetching = false;
  });

  testWidgets('about dialog shows version and credits',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      Provider<ThemeStore>(
        create: (_) => ThemeStore(),
        child: const MyApp(),
      ),
    );
    await tester.pump();

    await tester.tap(find.byIcon(Icons.menu));
    await tester.pumpAndSettle();

    await tester.tap(find.text('About'));
    await tester.pumpAndSettle();

    expect(find.byType(AboutDialog), findsOneWidget);
    expect(find.textContaining('2.0.0 (build 11)'), findsOneWidget);
    expect(find.text('Credits'), findsOneWidget);
    expect(find.textContaining('Bhavik Makwana'), findsWidgets);
    expect(find.textContaining('Claudney Sarti Sessa'), findsOneWidget);
  });
}
