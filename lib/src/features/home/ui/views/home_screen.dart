import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeScreen extends GetView<HomeController> {
  static String route = "/";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(controller.text.value),
    );
  }
}
