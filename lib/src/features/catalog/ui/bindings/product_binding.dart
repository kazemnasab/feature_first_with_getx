import 'package:feature_first_with_getx/src/features/catalog/ui/controllers/catalog_controller.dart';
import 'package:feature_first_with_getx/src/features/catalog/ui/controllers/product_controller.dart';
import 'package:feature_first_with_getx/src/features/home/repositories/user_repository.dart';
import 'package:get/get.dart';


class ProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IUserRepository>(() => UserRepository(Get.find()));
    Get.lazyPut<ProductController>(() => ProductController());
  }
}
