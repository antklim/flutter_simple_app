import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:simple_app/screens/pre-login.dart';

void main() {
  testWidgets('PreLogin Screen', (WidgetTester tester) async {
    Widget widgetUnderTest = MediaQuery(
      data: MediaQueryData(),
      child: MaterialApp(home: PreLogin()),
    );

    await tester.pumpWidget(widgetUnderTest);

    final loginButtonFinder = find.widgetWithText(FlatButton, 'Login');
    final registerButtonFinder = find.widgetWithText(FlatButton, 'Register');

    expect(loginButtonFinder, findsOneWidget);
    expect(registerButtonFinder, findsOneWidget);
  });
}