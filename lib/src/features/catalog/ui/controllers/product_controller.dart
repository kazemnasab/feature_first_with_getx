import 'package:feature_first_with_getx/src/features/catalog/ui/states/product_state.dart';
import 'package:feature_first_with_getx/src/features/home/repositories/user_repository.dart';
import 'package:get/get.dart';

import '../states/catalog_state.dart';

class ProductController extends GetxController {
  IUserRepository repository = Get.find();
  ProductState state = ProductState();

  @override
  void onInit() async {
    state.productId.value= Get.parameters['productId'] != null
        ? int.parse(Get.parameters['productId'].toString())
        : 0;
  }
}
