import 'package:ecommerce_cource_asroo/language/localiztion.dart';
import 'package:ecommerce_cource_asroo/logic/controllers/theme_controller.dart';
import 'package:ecommerce_cource_asroo/routes/routes.dart';
import 'package:ecommerce_cource_asroo/utils/my_string.dart';
import 'package:ecommerce_cource_asroo/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Asroo Shop',
      debugShowCheckedModeBanner: false,
      locale: Locale(GetStorage().read<String>('lang').toString()),
      translations: LocaliztionApp(),
      fallbackLocale: Locale(ene),
      theme: ThemesApp.light,
      darkTheme: ThemesApp.dark,
      themeMode: ThemeController().themeDataGet,
      // initialRoute: FirebaseAuth.instance.currentUser != null ||
      //     GetStorage().read<bool>('auth') == true
      //     ? AppRoutes.mainSreen
      //     : AppRoutes.welcome,
      initialRoute: AppRoutes.mainScreen,
      getPages: AppRoutes.routes,
    );
  }
}
