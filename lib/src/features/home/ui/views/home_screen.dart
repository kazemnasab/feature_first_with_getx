import '../../l10n/extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeScreen extends GetView<HomeController> {
  static String route = "/home";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (controller.state.loading.value) return Text("Loading".translate);
      return Container(
        child: Text(controller.state.users.value.length.toString()),
      );
    });
  }
}
