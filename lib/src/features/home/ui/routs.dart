import 'package:feature_first_with_getx/src/core/app_routes.dart';
import 'package:feature_first_with_getx/src/features/home/ui/views/home_screen.dart';
import 'package:get/route_manager.dart';
import 'package:get/get.dart';
import 'bindings/home_binding.dart';

class Routs implements IRouts<HomeScreen, HomeBinding> {
  @override
  String initial = "/";

  @override
  List<GetPage>? routes = [
    GetPage(
        name: HomeScreen.route,
        page: () => HomeScreen(),
        binding: HomeBinding())
  ];

  @override
  HomeBinding DefaultBinding() {
    // TODO: implement DefaultBinding
    return HomeBinding();
  }

  @override
  HomeScreen DefaultPage() {
    return HomeScreen();
  }
}
