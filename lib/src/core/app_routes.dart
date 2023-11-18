import 'package:get/route_manager.dart';

import 'package:get/get.dart';

import '../features/home/ui/routs.dart' as home;
import '../features/setting/ui/routs.dart' as setting;

abstract class IRouts<T,B>{
  String initial = "";
  List<GetPage<dynamic>>? routes;
  T DefaultPage();
  B DefaultBinding();
}
List<GetPage>? getPages() {

  IRouts home_route = home.Routs();
  IRouts setting_route = setting.Routs();

  return [
    GetPage(
      name: home_route.initial,
      page: () => home_route.DefaultPage(),
      binding: home_route.DefaultBinding(),
      children: home_route.routes!,
    ),GetPage(
      name: setting_route.initial,
      page: () => setting_route.DefaultPage(),
      binding: setting_route.DefaultBinding(),
      children: setting_route.routes!,
    ),
  ];
}


