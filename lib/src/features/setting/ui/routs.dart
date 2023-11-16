import 'package:feature_first_with_getx/src/core/app_routes.dart';
import 'package:feature_first_with_getx/src/features/setting/ui/views/setting_screen.dart';
import 'package:get/route_manager.dart';
import 'package:get/get.dart';
import 'bindings/setting_binding.dart';

class Routs implements IRouts<SettingScreen, SettingBinding> {
  @override
  String initial = "/setting";

  @override
  List<GetPage>? routes = [
    GetPage(
        name: SettingScreen.route,
        page: () => SettingScreen(),
        binding: SettingBinding())
  ];

  @override
  SettingBinding DefaultBinding() {
    // TODO: implement DefaultBinding
    return SettingBinding();
  }

  @override
  SettingScreen DefaultPage() {
    return SettingScreen();
  }
}
