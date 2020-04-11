import 'package:flutter_test/flutter_test.dart';

import 'package:simple_app/main.dart';

void main() {
  testWidgets('Main Screen', (WidgetTester tester) async {
    await tester.pumpWidget(SimpleApp());
    expect(find.text('My Simple App BAZINGA'), findsOneWidget);
    expect(find.text('1'), findsNothing);
  });
}
