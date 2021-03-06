import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:moralar_widgets/moralar_widgets.dart';

void main() {
  group('Assets', () {
    test('Should match full path', () {
      expect(Assets.images.appLogo, 'assets/images/app_logo.png');
    });
    testWidgets('Should render', (tester) async {
      await tester.pumpWidget(Image.asset(Assets.images.appLogo));
    });
  });
}
