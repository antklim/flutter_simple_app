import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:simple_app/models/app_state.dart';
import 'package:simple_app/screens/home.dart';
import 'package:simple_app/service_locator.dart';

void main() {
  testWidgets('Home Screen', (WidgetTester tester) async {
    setupLocator();
    Widget widgetUnderTest = MediaQuery(
      data: MediaQueryData(),
      child: ScopedModel<AppState>(
        model: locator<AppState>(),
        child: MaterialApp(
          home: Home(title: 'TITLE', message: 'MESSAGE'),
        ),
      ),
    );

    await tester.pumpWidget(widgetUnderTest);

    // final titleFinder = find.text('TITLE');
    // final messageFinder = find.text('MESSAGE');

    // expect(titleFinder, findsOneWidget);
    // expect(messageFinder, findsOneWidget);
  });
}
