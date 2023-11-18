import 'package:feature_first_with_getx/src/features/home/repositories/user_repository.dart';
import 'package:feature_first_with_getx/src/features/home/ui/states/home_state.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IUserRepository>(() => UserRepository(Get.find()));
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
