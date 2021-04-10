import 'package:flutter_stackoverflow/app/presentation/managers/home_controller.dart';
import 'package:flutter_stackoverflow/app/presentation/managers/ocr_details_controller.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}

class OCRDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OCRDetailsController>(() => OCRDetailsController());
  }
}
