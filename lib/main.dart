import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/app_export.dart';

var customerId;


Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  SharedPreferences prefs = await SharedPreferences.getInstance();
  customerId  = prefs.getString('customer_id');
  Logger.init(kReleaseMode ? LogMode.live : LogMode.debug);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: AppLocalization(),
      locale: Get.deviceLocale, //for setting localization strings
      fallbackLocale: Locale('en', 'US'),
      title: 'shopsie',
      initialBinding: InitialBindings(),
      initialRoute: customerId!=null? AppRoutes.mainLandingScreen : AppRoutes.initialRoute,
      getPages: AppRoutes.pages,
    );
  }
}
