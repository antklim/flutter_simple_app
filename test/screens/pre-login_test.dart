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

    final welcomeTextFinder = find.text('Welcome');
    final loginButtonFinder = find.widgetWithText(FlatButton, 'Login');
    final registerButtonFinder = find.widgetWithText(FlatButton, 'Register');

    expect(welcomeTextFinder, findsOneWidget);
    expect(loginButtonFinder, findsOneWidget);
    expect(registerButtonFinder, findsOneWidget);
  });
}