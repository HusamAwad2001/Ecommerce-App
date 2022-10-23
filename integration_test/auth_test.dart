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

      /// Name
      await tester.enterText(find.byKey(const Key(MyKeys.signUpName)), "Husam");
      await tester.pumpAndSettle(const Duration(seconds: 1));

      /// Email
      await tester.enterText(
          find.byKey(const Key(MyKeys.signUpEmail)), "husam@gmail.com");
      await tester.pumpAndSettle(const Duration(seconds: 1));

      /// Password
      await tester.enterText(
          find.byKey(const Key(MyKeys.signUpPassword)), "husam123123");
      await tester.pumpAndSettle(const Duration(seconds: 1));

      /// Close Keyboard
      await tester.testTextInput.receiveAction(TextInputAction.done);
      await tester.pumpAndSettle(const Duration(seconds: 1));

      /// Action Button
      await tester.tap(find.byKey(const Key(MyKeys.signUpButton)));
      await tester.pumpAndSettle(const Duration(seconds: 1));
    });
  });
}
