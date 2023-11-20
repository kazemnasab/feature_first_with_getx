import 'package:feature_first_with_getx/src/features/home/repositories/user_repository.dart';
import 'package:get/get.dart';

import '../states/catalog_state.dart';

class CatalogController extends GetxController {
  IUserRepository repository = Get.find();
  CatalogState state = CatalogState();

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
