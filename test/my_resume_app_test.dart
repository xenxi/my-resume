import 'package:antoniomdm/presentation/my_resume_app.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('show name', (WidgetTester tester) async {
    await tester.pumpWidget(const MyResumeApp());
    expect(find.text('Antonio Manuel Díaz Moreno'), findsOneWidget);
  });
  testWidgets('show under construction', (WidgetTester tester) async {
    await tester.pumpWidget(const MyResumeApp());
    expect(find.text('Under Construction'), findsOneWidget);
  });
}
