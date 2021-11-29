import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(GetMaterialApp(home: Home()));

class Controller extends GetxController {
  static Controller get to => Get.find();
  final RxList<int> numbers = <int>[].obs;
}

class Home extends StatelessWidget {
  final Controller c = Get.put(Controller());

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ShowWidget(),
            ChangeWidget(),
          ],
        ),
      ),
    );
  }
}

class ShowWidget extends StatelessWidget {
  ShowWidget({Key? key}) : super(key: key);
  final Controller c = Controller.to;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      color: Colors.red,
      child: (Obx(
        () => ItemsList(numbers: c.numbers.toList()),
      )),
    );
  }
}

class ItemsList extends StatelessWidget {
  final List<int> numbers;

  ItemsList({required this.numbers, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('There are ${numbers.length} numbers'),
        Text(numbers.map((n) => n.toString()).join(", ")),
      ],
    );
  }
}

class ChangeWidget extends StatelessWidget {
  ChangeWidget({Key? key}) : super(key: key);
  final Controller c = Controller.to;
  final randGenerator = Random();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      color: Colors.green,
      child: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                c.numbers.add(randGenerator.nextInt(100));
              },
              child: const Text('add number'),
            ),
            ElevatedButton(
              onPressed: () {
                c.numbers.clear();
              },
              child: const Text('reset numbers'),
            ),
            ElevatedButton(
              onPressed: () {
                c.numbers.sort();
              },
              child: const Text('sort numbers'),
            ),
          ],
        ),
      ),
    );
  }
}
