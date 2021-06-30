import 'package:get/get.dart';
import 'package:kelurahan_pagesangan/ui/dynamic_page.dart';
import 'package:kelurahan_pagesangan/ui/home_page.dart';
import './route_name.dart';
import '../ui/splash_page.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: RouteName.splash,
      page: () => SplashPage(),
    ),
    GetPage(
      name: RouteName.home,
      page: () => HomePage(),
    ),
    GetPage(
      name: RouteName.dynamic + '/:id',
      page: () => DynamicPage(),
    ),
  ];
}
