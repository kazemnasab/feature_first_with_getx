import 'package:feature_first_with_getx/src/features/home/domains/User.dart';
import 'package:feature_first_with_getx/src/features/shared/layout/bottom.navigation.dart';
import 'package:feature_first_with_getx/src/features/shared/layout/custom.app.bar.dart';
import 'package:feature_first_with_getx/src/features/shared/layout/layout.scafold.dart';

import '../../l10n/extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/catalog_controller.dart';
import '_product_filter.dart';
import '_product_item.dart';

class CatalogScreen extends GetView<CatalogController> {
  static String route = "/catalog";
  const CatalogScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return LayoutScafold(
        loading: controller.state.loading.value,
        appBar: CustomAppBar(context: context, title: "", backFunction: () {}),
        bottomNavigationBar: CustomBottomNavigation(),
        body: Container(
          child: Column(
            children: [
              ProductFilterLinkerWidget(),
              Expanded(
                child: ListView.builder(
                    itemCount: controller.state.users.length,
                    itemBuilder: (_, index) {
                      User item = controller.state.users[index];
                      return SimpleProductRowItem(
                        user: item,
                      );
                    }),
              )
            ],
          ),
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
