import 'dart:convert';

import 'package:feature_first_with_getx/src/providers/network/base_api_provider.dart';
import 'package:feature_first_with_getx/src/providers/network/dio_provider.dart';
import 'package:feature_first_with_getx/src/services/api_global_service.dart';
import 'package:feature_first_with_getx/src/services/shopping_cart_service.dart';
import 'package:feature_first_with_getx/src/services/storage_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/route_manager.dart';
import 'src/common/app_themes.dart';
import 'src/core/app_routes.dart';
import 'src/l10n/lang.dart';

void main() {

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  WidgetsFlutterBinding.ensureInitialized();
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "/catalog",
    initialBinding: BindingsBuilder(() {
      Get.lazyPut<BaseApiProvider>(
          () => DioProvider.getIstance(baseUrl: "https://reqres.in/api"));
      Get.lazyPut<ApiGlobalService>(() => ApiGlobalService());
      Get.lazyPut<StorageService>(() => StorageService());
      Get.lazyPut<ShoppingCartService>(() => ShoppingCartService());
    }),
    getPages: getPages(),
    translations: Languages(),
    locale: const Locale('fa', 'IR'),
    fallbackLocale: const Locale('fa', 'IR'),
    theme: AppThemes.darkTheme,
  ));
  //runApp(const MyApp());
}
