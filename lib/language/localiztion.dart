import 'package:ecommerce_cource_asroo/language/ar.dart';
import 'package:ecommerce_cource_asroo/language/en.dart';
import 'package:ecommerce_cource_asroo/language/fr.dart';
import 'package:ecommerce_cource_asroo/utils/my_string.dart';
import 'package:get/route_manager.dart';

class LocaliztionApp extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        ene: en,
        ara: ar,
        frf: fr,
      };
}
