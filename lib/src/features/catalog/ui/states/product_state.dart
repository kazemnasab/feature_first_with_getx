import 'package:feature_first_with_getx/src/features/catalog/domains/product.dart';
import 'package:get/get.dart';

class ProductState {
  var productId = 0.obs;
  var product = Rx<Product?>(null);
  var loading = false.obs;
}
