import 'package:get/get.dart';
import 'package:mp_charpt/config/router/route_name.dart';
import 'package:mp_charpt/presentation/screens/auth_screen.dart';
import 'package:mp_charpt/presentation/screens/splash_screen.dart';

class AppRoute {
  static List<GetPage> getPages = [
    GetPage(
      name: RouteName.splashScreen,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: RouteName.authScreen,
      page: () => const AuthScreen(),
    ),
    // GetPage(
    //   name: '/home',
    //   page: () => const HomePage(),
    // ),
    // GetPage(
    //   name: '/detail',
    //   page: () => const DetailPage(),
    // ),
    // GetPage(
    //   name: '/about',
    //   page: () => const AboutPage(),
    // ),
  ];
}
