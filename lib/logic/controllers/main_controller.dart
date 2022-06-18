import 'package:ecommerce_cource_asroo/view/screens/category_screen.dart';
import 'package:ecommerce_cource_asroo/view/screens/favorites_screen.dart';
import 'package:ecommerce_cource_asroo/view/screens/home_screen.dart';
import 'package:ecommerce_cource_asroo/view/screens/settings_screen.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  RxInt currentIndex = 0.obs;

  var tabs = [
    HomeScreen(),
    CategoryScreen(),
    FavoritesScreen(),
    SettingsScreen(),
  ].obs;

  var title = [
    "Asroo Shop",
    "Categories",
    'Favourites',
    "Settings",
  ].obs;
}
