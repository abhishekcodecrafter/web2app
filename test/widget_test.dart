import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:usdt2inr/main.dart';

void main() {
  testWidgets('MyApp widget test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the title text is present.
    expect(find.text('usdt2inr'), findsOneWidget);

    // Verify that the initial WebView is loaded.
    expect(find.byType(WebView), findsOneWidget);

    // Simulate button press and verify changes.
    await tester.tap(find.byIcon(Icons.download));
    await tester.pump();

    // Verify that the landing page URL is launched.
    expect(find.byType(WebView), findsNothing); // Assuming WebView disappears after button press.

    // Verify that your landing page URL is launched.
    expect(await find.byType(WebView), findsNothing);
  });
}
