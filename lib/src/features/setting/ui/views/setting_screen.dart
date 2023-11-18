import '../../l10n/extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/setting_controller.dart';

class SettingScreen extends GetView<SettingController> {
  static String route = "/setting";
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Loading".translate),
    );
  }
}
