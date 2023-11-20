import 'package:feature_first_with_getx/src/features/catalog/ui/controllers/catalog_controller.dart';
import 'package:feature_first_with_getx/src/features/home/repositories/user_repository.dart';
import 'package:get/get.dart';


class CatalogBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IUserRepository>(() => UserRepository(Get.find()));
    Get.lazyPut<CatalogController>(() => CatalogController());
  }
}
