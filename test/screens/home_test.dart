import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:simple_app/screens/home.dart';

void main() {
  testWidgets('Home Screen', (WidgetTester tester) async {
    Widget widgetUnderTest = MediaQuery(
      data: MediaQueryData(),
      child: MaterialApp(
        home: Home(title: 'TITLE', message: 'MESSAGE'),
      ),
    );

    await tester.pumpWidget(widgetUnderTest);

    final titleFinder = find.text('TITLE');
    final messageFinder = find.text('MESSAGE');

    expect(titleFinder, findsOneWidget);
    expect(messageFinder, findsOneWidget);
  });
}
