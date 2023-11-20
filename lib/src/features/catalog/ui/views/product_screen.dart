import 'package:feature_first_with_getx/src/features/catalog/ui/controllers/product_controller.dart';
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

class ProductScreen extends GetView<ProductController> {
  static String route = "/product";
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var cat = Get.find<CatalogController>();
    return Obx(() {
      return LayoutScafold(
        loading: controller.state.loading.value,
        appBar: CustomAppBar(context: context, title: "", backFunction: () {}),
        bottomNavigationBar: CustomBottomNavigation(),
        body: Text(
            "${controller.state.productId.toString()} of ${cat.state.users.length}"),
      );
    });
  }
}
