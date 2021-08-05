import 'package:flutter_test/flutter_test.dart';
import 'package:moralar_widgets/moralar_widgets.dart';

void main() {
  group('Image from assets', () {
    testWidgets('Should render', (tester) async {
      await tester.pumpWidget(MoralarImage.asset(Assets.images.appLogo));
    });
  });
}
