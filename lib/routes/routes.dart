import 'package:cf_reseller_app/features/home_screen/view/home_screen.dart';
import 'package:cf_reseller_app/features/splash_screen/view/splash_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String home = 'home';

  static const String categories = 'categories';

  static const String cart = 'cart';

  static const String user = 'user';

  static const String splash = 'splash';

  static Route<dynamic>? getGeneratedRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(name: splash),
          builder: (_) => const SplashScreen(),
        );

      case home:
        return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(name: home),
          builder: (_) => const HomeScreen(),
        );

      // case categories:
      //   return MaterialPageRoute(
      //     settings: const RouteSettings(name: categories),
      //     builder: (_) => const CategoriesScreen(),
      //   );

      // case cart:
      //   return MaterialPageRoute(
      //     settings: const RouteSettings(name: cart),
      //     builder: (_) => const CartScreen(),
      //   );

      // case user:
      //   return MaterialPageRoute(
      //     settings: const RouteSettings(name: user),
      //     builder: (_) => const UserScreen(),
      //   );

      default:
        return null;
    }
  }
}
