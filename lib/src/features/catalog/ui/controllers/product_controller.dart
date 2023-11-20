import 'package:feature_first_with_getx/src/features/catalog/domains/product.dart';
import 'package:feature_first_with_getx/src/features/catalog/ui/states/product_state.dart';
import 'package:feature_first_with_getx/src/features/home/repositories/user_repository.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  IUserRepository repository = Get.find();
  ProductState state = ProductState();

  @override
  void onInit() async {
    state.productId.value = Get.parameters['productId'] != null
        ? int.parse(Get.parameters['productId'].toString())
        : 0;
    await loadProduct();
  }

  @override
  void dispose() {
    Get.delete<GetxController>();
    super.dispose();
  }

  Future<void> loadProduct() async {
    state.loading.value = true;
    state.product.value = Product(
        id: state.productId.value,
        sku: "AI7001-81L",
        title: " Cal.نسنج 60 داعت - نمایشگرتاریخ ",
        price: 4500000,
        thumbnail: "https://saati.watch/product/detail/AI7001-81L%20.jpg",
        images: []);
    state.loading.value = false;
  }
}
