import 'package:shopsie/presentation/product_page_screen/product_page_screen.dart';
import 'package:shopsie/presentation/product_page_screen/binding/product_page_binding.dart';
import 'package:shopsie/presentation/product_discover_screen/product_discover_screen.dart';
import 'package:shopsie/presentation/product_discover_screen/binding/product_discover_binding.dart';
import 'package:shopsie/presentation/login_screen/login_screen.dart';
import 'package:shopsie/presentation/login_screen/binding/login_binding.dart';
import 'package:shopsie/presentation/cart_screen/cart_screen.dart';
import 'package:shopsie/presentation/cart_screen/binding/cart_binding.dart';
import 'package:shopsie/presentation/splash_screen/splash_screen.dart';
import 'package:shopsie/presentation/splash_screen/binding/splash_binding.dart';
import 'package:shopsie/presentation/register_screen/register_screen.dart';
import 'package:shopsie/presentation/register_screen/binding/register_binding.dart';
import 'package:shopsie/presentation/product_search_screen/product_search_screen.dart';
import 'package:shopsie/presentation/product_search_screen/binding/product_search_binding.dart';
import 'package:shopsie/presentation/main_landing_screen/main_landing_screen.dart';
import 'package:shopsie/presentation/main_landing_screen/binding/main_landing_binding.dart';
import 'package:shopsie/presentation/profile_tab_screen/profile_tab_screen.dart';
import 'package:shopsie/presentation/profile_tab_screen/binding/profile_tab_binding.dart';
import 'package:shopsie/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:shopsie/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String productPageScreen = '/product_page_screen';

  static String productDiscoverScreen = '/product_discover_screen';

  static String loginScreen = '/login_screen';

  static String cartScreen = '/cart_screen';

  static String splashScreen = '/splash_screen';

  static String registerScreen = '/register_screen';

  static String productSearchScreen = '/product_search_screen';

  static String mainLandingScreen = '/main_landing_screen';

  static String profileTabScreen = '/profile_tab_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: productPageScreen,
      page: () => ProductPageScreen(),
      bindings: [
        ProductPageBinding(),
      ],
    ),
    GetPage(
      name: productDiscoverScreen,
      page: () => ProductDiscoverScreen(),
      bindings: [
        ProductDiscoverBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: cartScreen,
      page: () => CartScreen(),
      bindings: [
        CartBinding(),
      ],
    ),
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: registerScreen,
      page: () => RegisterScreen(),
      bindings: [
        RegisterBinding(),
      ],
    ),
    GetPage(
      name: productSearchScreen,
      page: () => ProductSearchScreen(),
      bindings: [
        ProductSearchBinding(),
      ],
    ),
    GetPage(
      name: mainLandingScreen,
      page: () => MainLandingScreen(),
      bindings: [
        MainLandingBinding(),
      ],
    ),
    GetPage(
      name: profileTabScreen,
      page: () => ProfileTabScreen(),
      bindings: [
        ProfileTabBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
