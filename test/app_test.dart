import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:simple_app/main.dart';
import 'package:simple_app/service_locator.dart';

// This is the integration test for the whole app

void main() {
  testWidgets('Simple App', (WidgetTester tester) async {
    setupLocator();
    await tester.pumpWidget(SimpleApp());

    expect(find.text('Welcome'), findsOneWidget);

    final loginButtonFinder = find.widgetWithText(FlatButton, 'Login');

    await tester.tap(loginButtonFinder);
    await tester.pumpAndSettle();

    // await tester.enterText(find.byType(TextField).first, 'u1');
    // await tester.enterText(find.byType(TextField).last, 'p1');

    // final loginButtonFinder2 = find.widgetWithText(RawMaterialButton, 'Login');

    // await tester.tap(loginButtonFinder2);
    // await tester.pumpAndSettle();

    // expect(find.text('Welcome to Simple App'), findsOneWidget);
  });
}
