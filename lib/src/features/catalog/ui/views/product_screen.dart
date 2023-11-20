import 'package:feature_first_with_getx/src/features/catalog/ui/controllers/product_controller.dart';
import 'package:feature_first_with_getx/src/features/shared/layout/custom.app.bar.dart';
import 'package:feature_first_with_getx/src/features/shared/layout/layout.scafold.dart';
import 'package:feature_first_with_getx/src/features/shared/widgets/custom.number.widget.dart';
import 'package:feature_first_with_getx/src/services/shopping_cart_service.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../l10n/extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/catalog_controller.dart';
import '_product_filter.dart';
import '_product_item.dart';

class ProductScreen extends GetView<ProductController> {
  static String route = "/product";
  ShoppingCartService shoppingCart = Get.find<ShoppingCartService>();
   ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return LayoutScafold(
        loading: controller.state.loading.value,
        appBar: CustomAppBar(context: context, title: "", backFunction: () {}),
        bottomNavigationBar: _RowAddToCart(context),
        body: Column(
          children: [
            Text(controller.state.product.value!.id.toString()),
            Text(shoppingCart.cartItems.value!= null ? shoppingCart.cartItems.value!.length.toString() : "empty"),
            SizedBox(),
            Container(
              padding: EdgeInsets.all(20),
              child: Image.network(
                  "https://saati.watch/product/detail/AI7001-81L%20.jpg",
                  fit: BoxFit.fitWidth),
            ),
            Text(
              " Cal.نسنج 60 داعت - نمایشگرتاریخ ",
              style: TextStyle(fontSize: 12),
            ),
            SizedBox(
              height: 10,
            ),
            Text("AI7001-81L",
                style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline)),
            Expanded(child: Text(""))
          ],
        ),
      );
    });
  }

  _RowAddToCart(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border(top: BorderSide(width: 1))),
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
              child: TextButton.icon(
                  style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      backgroundColor: MaterialStateProperty.all(Colors.green)),
                  onPressed: () {
                    //shoppingCart.clear();
                    shoppingCart.add(controller.state.product.value!.id, 1);
                  },
                  icon: FaIcon(
                    FontAwesomeIcons.cartFlatbed,
                    size: 14,
                    color: Colors.white,
                  ),
                  label: Text("add to cart"))),
          Expanded(
            child: NumberFormatText(
              controller.state.product.value!.price.toString(),
              textAlign: TextAlign.left,
            ),
            flex: 1,
          )
        ],
      ),
    );
  }
}
