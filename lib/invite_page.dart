import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InvitePage extends StatelessWidget {
  static final routeName = "/invite";

  const InvitePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String inviteId = Get.parameters["inviteId"]!;
    final String userId = Get.parameters["userId"]!;
    return Scaffold(
      body: Text("$inviteId - $userId"),
    );
  }
}

class NotFound extends StatelessWidget {
  static final routeName = "/not-found";
  const NotFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Not found"),
    );
  }
}
