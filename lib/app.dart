import 'package:flutter/material.dart';
import 'package:flutter_stackoverflow/app/_navigation/app_pages.dart';
import 'package:flutter_stackoverflow/app/presentation/pages/ocr_details_page.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter StackOverflow',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: AppPages.list,
      initialRoute: AppRoutes.OCR_DETAILS,
    );
  }
}
