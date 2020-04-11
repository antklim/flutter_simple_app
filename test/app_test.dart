import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:simple_app/main.dart';

// This is the integration test for the whole app

void main() {
  testWidgets('Simple App', (WidgetTester tester) async {
    await tester.pumpWidget(SimpleApp());

    expect(find.text('Welcome'), findsOneWidget);

    // TODO: Add integration test that clicks button and loads home screen
    // final loginButtonFinder = find.widgetWithText(FlatButton, 'Login');

    // await tester.tap(loginButtonFinder);
    // await tester.pump();

    // expect(find.text('Welcome to Simple App'), findsOneWidget);
  });
}
