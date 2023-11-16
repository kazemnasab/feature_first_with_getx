import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/route_manager.dart';
import 'package:flutter/services.dart';

import 'src/core/app_routes.dart';

void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  runApp(GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/setting",
      initialBinding: BindingsBuilder(() {
      }),
      getPages: getPages(),
      locale: const Locale('fa', 'IR'),
      fallbackLocale: const Locale('fa', 'IR')));
  //runApp(const MyApp());
}
