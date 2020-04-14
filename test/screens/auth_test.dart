import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:simple_app/models/app_state.dart';
import 'package:simple_app/screens/auth.dart';
import 'package:simple_app/service_locator.dart';

void main() {
  testWidgets('PreLogin Screen', (WidgetTester tester) async {
    setupLocator();
    Widget widgetUnderTest = MediaQuery(
      data: MediaQueryData(),
      child: ScopedModel<AppState>(
        model: locator<AppState>(),
        child: MaterialApp(home: Auth()),
      ),
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
