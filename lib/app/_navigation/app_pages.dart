import 'package:flutter_stackoverflow/app/_bindings/app_binding.dart';
import 'package:flutter_stackoverflow/app/presentation/pages/home_page.dart';
import 'package:flutter_stackoverflow/app/presentation/pages/ocr_details_page.dart';
import 'package:get/get.dart';

class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    // GetPage(
    //   name: AppRoutes.PICK_IMAGE,
    //   page: () => PickImagePage(),
    //   binding: PickImageBinding(),
    // ),
    GetPage(
      name: AppRoutes.OCR_DETAILS,
      page: () => OCRDetailsPage(),
      binding: OCRDetailsBinding(),
    )
  ];
}

class AppRoutes {
  static const String HOME = '/';

  // static const String PICK_IMAGE = '/pick_image';
  static const String OCR_DETAILS = '/ocr_details';
}
