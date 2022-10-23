import 'package:ecommerce_cource_asroo/constants/mykeys.dart';
import "package:ecommerce_cource_asroo/main.dart" as app;
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  group("Auth Test", () {
    testWidgets("Sign Up", (tester) async {
      app.main();
      await tester.pumpAndSettle(const Duration(seconds: 1));
      await tester.enterText(
          find.byKey(const Key(MyKeys.SIGNUPEMAIL)), "teset@example.com");
      await tester.pumpAndSettle(const Duration(seconds: 1));
      await tester.enterText(find.byKey(const Key(MyKeys.SignUpName)), "test");
      await tester.pumpAndSettle(const Duration(seconds: 1));
      await tester.enterText(
          find.byKey(const Key(MyKeys.SignUpPassword)), "Coding@1234?");
      await tester.pumpAndSettle(const Duration(seconds: 1));
      await tester.testTextInput.receiveAction(TextInputAction.done);
      await tester.pumpAndSettle(const Duration(seconds: 1));
      await tester.tap(find.byKey(const Key(MyKeys.SignUpButton)));
      await tester.pumpAndSettle(const Duration(seconds: 1));
    });
  });
}
