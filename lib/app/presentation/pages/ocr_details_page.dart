import 'package:flutter/material.dart';
import 'package:flutter_stackoverflow/app/_navigation/app_pages.dart';
import 'package:flutter_stackoverflow/app/presentation/managers/ocr_details_controller.dart';
import 'package:get/get.dart';

class OCRDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final OCRDetailsController controller = Get.find();
    return Scaffold(
      appBar: AppBar(title: Text('OCR Details Page')),
      body: Center(
        child: FlatButton(
            color: Colors.blue,
            child: Icon(Icons.save_outlined),
            onPressed: () {
              Get.toNamed(
                AppRoutes.HOME,
                arguments: {
                  // 'image': controller.image,
                  'ocr_text': controller.text
                },
              );
            }),
      ),
    );
  }
}
