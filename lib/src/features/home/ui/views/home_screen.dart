import 'package:feature_first_with_getx/src/features/home/domains/User.dart';
import 'package:feature_first_with_getx/src/features/shared/layout/bottom.navigation.dart';
import 'package:feature_first_with_getx/src/features/shared/layout/layout.scafold.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      return LayoutScafold(
        loading: controller.state.loading.value,
        appBar: AppBar(title: Text("sdddd")),
        bottomNavigationBar: CustomBottomNavigation(),
        body: SingleChildScrollView(
          child:  ListView.builder(
              itemCount: controller.state.users.length,
              itemBuilder: (_, index) {

                print(index);
                return Text("item.email");
              }),
        ),
      );
      if (controller.state.loading.value)
        return FloatingActionButton(onPressed: () {
          Get.toNamed(Get.currentRoute + "/e");
        });
      return FloatingActionButton(onPressed: () {});
      if (controller.state.loading.value) return Text("Loading".translate);
      return Container(
        child: InkWell(
            child: Text(controller.state.users.value.length.toString())),
      );
    });
  }
}
