import 'package:flutter_test/flutter_test.dart';

import 'package:simple_app/main.dart';

// This is the integration test for the whole app

void main() {
  testWidgets('Simple App', (WidgetTester tester) async {
    await tester.pumpWidget(SimpleApp());
    expect(find.text('Welcome to Simple App'), findsOneWidget);
    expect(find.text('1'), findsNothing);
  });
}
