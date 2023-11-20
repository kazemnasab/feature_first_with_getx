import 'package:get/route_manager.dart';

import 'package:get/get.dart';

import '../features/catalog/ui/routs.dart' as catalog;
import '../features/home/ui/routs.dart' as home;
import '../features/setting/ui/routs.dart' as setting;

abstract class IRouts<T, B> {
  String initial = "";
  List<GetPage>? get routes;
  T DefaultPage();
  B DefaultBinding();
}

List<IRouts> feauters = [home.Routs(), catalog.Routs(), setting.Routs()];

List<GetPage>? getPages() {
  List<GetPage> pages = [];
  feauters.forEach((feature) {
    pages.add(GetPage(
      name: feature.initial,
      page: () => feature.DefaultPage(),
      binding: feature.DefaultBinding(),
      children: feature.routes!,
    ));
  });
  return pages;
}
