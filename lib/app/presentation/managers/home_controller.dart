import 'dart:io';

import 'package:get/get.dart';

class HomeController extends GetxController {
  // late File image;
  late String ocr_text;

  onInit() {
    super.onInit();

    // image = Get.arguments['image'];
    ocr_text = Get.arguments['ocr_text'];
  }
}
