import 'package:feature_first_with_getx/src/core/app_routes.dart';
import 'package:feature_first_with_getx/src/features/catalog/domains/product.dart';
import 'package:feature_first_with_getx/src/features/catalog/ui/bindings/product_binding.dart';
import 'package:feature_first_with_getx/src/features/catalog/ui/views/product_screen.dart';
import 'views/catalog_screen.dart';
import 'package:get/route_manager.dart';
import 'package:get/get.dart';
import 'bindings/catalog_binding.dart';

class Routs implements IRouts<CatalogScreen, CatalogBinding> {
  @override
  String initial = "/catalog";

  @override
  List<GetPage>? get routes {
    return [
      GetPage(
          name: "${ProductScreen.route}/:productId",
          page: () => ProductScreen(),
          binding: ProductBinding()),
      GetPage(
          name: "/:title",
          page: () => CatalogScreen(),
          binding: CatalogBinding()),
      GetPage(
          name: "/search",
          page: () => CatalogScreen(),
          binding: CatalogBinding())
    ];
  }

  @override
  CatalogBinding DefaultBinding() {
    // TODO: implement DefaultBinding
    return CatalogBinding();
  }

  @override
  CatalogScreen DefaultPage() {
    return CatalogScreen();
  }
}
