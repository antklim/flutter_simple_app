import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:simple_app/screens/splash.dart';

void main() {
  testWidgets('Splash Screen', (WidgetTester tester) async {
    Widget widgetUnderTest = MediaQuery(
      data: MediaQueryData(),
      child: MaterialApp(home: Splash()),
    );

    await tester.pumpWidget(widgetUnderTest);

    expect(find.text('Simple App'), findsOneWidget);
  });
}
