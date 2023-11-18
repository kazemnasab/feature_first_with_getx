import 'package:feature_first_with_getx/src/features/home/repositories/user_repository.dart';
import 'package:get/get.dart';

import '../states/home_state.dart';

class HomeController extends GetxController {
  IUserRepository repository = Get.find();
  HomeState state = HomeState();

  @override
  void onInit() async {
    await loadUsers();
  }

  Future<void> loadUsers() async {
    state.loading.value = true;
    var list = await repository.getUsers();
    state.users.value = list.data;
    state.loading.value = false;
  }
}
