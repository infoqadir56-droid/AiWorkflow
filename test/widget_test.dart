import 'package:flutter_test/flutter_test.dart';
import 'package:connect_withai/views/doodle_app.dart';

void main() {
  testWidgets('Doodle home page renders and tabs respond', (WidgetTester tester) async {
    await tester.pumpWidget(const DoodleApp());

    expect(find.text('Start'), findsOneWidget);
    expect(find.text('My Recent'), findsOneWidget);
    expect(find.text('Lucky Turtle'), findsOneWidget);
    expect(find.text('Pig and Skate'), findsOneWidget);

    await tester.tap(find.text('My Recent'));
    await tester.pump();

    expect(find.text('My Recent'), findsOneWidget);
  });
}
