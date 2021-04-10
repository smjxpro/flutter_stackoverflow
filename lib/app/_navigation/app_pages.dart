import 'package:flutter_stackoverflow/app/_bindings/home_binding.dart';
import 'package:flutter_stackoverflow/app/presentation/pages/home_page.dart';
import 'package:get/get.dart';

abstract class AppPages {
  static List<GetPage> pages = [
    GetPage(
      name: AppRoutes.home,
      page: () => MyHomePage(),
      binding: HomeBinding(),
    ),
  ];
}

abstract class AppRoutes {
  static const home = '/';
}
