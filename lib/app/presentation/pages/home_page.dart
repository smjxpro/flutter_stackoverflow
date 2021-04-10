import 'package:flutter/material.dart';
import 'package:flutter_stackoverflow/app/presentation/managers/home_controller.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(32),
          child: GetBuilder<HomeController>(
            builder: (_) {
              // return _.ocr_text != null ? Image.file(_.image) : Container();
              return Text(_.ocr_text);
            },
          ),
        ),
      ),
    );
  }
}
