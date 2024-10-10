import 'package:devfolio/components/app_button.dart';
import 'package:jaspr_test/jaspr_test.dart';

void main() {
  testComponents(
    'app button default test',
    (ComponentTester tester) async {
      const label = 'Open google';
      await tester.pumpComponent(
        AppButton(
          label: label,
          href: 'https://google.com',
        ),
      );

      expect(find.tag('a'), findsOneComponent);
      expect(find.tag('span'), findsOneComponent);
      expect(find.text(label), findsOneComponent);
    },
  );
}
