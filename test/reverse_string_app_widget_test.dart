import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:reusablecomponent/modules/reverse_string/presentation/pages/reverse_string_page.dart';

void main() {
  testWidgets('ReverseStringApp Widgets Test', (widgetTester) async {
    await widgetTester.pumpWidget(ReverseStringApp());

    var reverseStringTextField = find.byType(TextField);
    expect(reverseStringTextField, findsOneWidget);

    await widgetTester.enterText(reverseStringTextField, 'Hello');
    expect(find.text('Hello'), findsOneWidget);

    var reverseButton = find.text('Reverse');
    expect(reverseButton, findsOneWidget);

    await widgetTester.tap(reverseButton);
    await widgetTester.pump();

    expect(find.text('olleH'), findsOneWidget);
  });
}
