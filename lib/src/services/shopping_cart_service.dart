import 'dart:convert';

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ShoppingCartService extends GetxService {
  static ShoppingCartService get to => Get.find();
  late SharedPreferences _prefs;
  String Dkey = "shopping_cart";
  final _key = "shopping_cart";
  Rx<Map<String,String>?> cartItems = Rx<Map<String,String>?>(null);

  @override
  Future<void> onInit() async {
    _prefs = await SharedPreferences.getInstance();
    super.onInit();
  }

  Future<bool> save(Map<String,String> cart) async {
    print(cart.toString());
    var res = await _prefs.setString(_key, json.encode(cart));
    return res;
  }

  Future<bool> exist(int productId) async {
    String value = await _prefs.getString(_key) ?? "{}";
    Map<String,String> cart = Map<String,String>.from(json.decode(value));
    return cart.containsKey(productId);
  }

  Future<bool> add(int productId, int count) async {
    String value = await _prefs.getString(_key) ?? "{}";
    print(json.decode(value));
    Map<String,String> cart = Map<String,String>.from(json.decode(value));
    print(cart.toString());
    if (!cart.containsKey(productId)) {
      cart[productId.toString()] = count.toString();
    } else {
      cart[productId.toString()] = cart[productId]! + count.toString();
    }
    cartItems.value = cart;
    return await save(cart);
  }

  Future<bool> update(int productId, int count) async {
    String value = await _prefs.getString(_key) ?? "{}";
    Map<String,String> cart = Map<String,String>.from(json.decode(value));
    cart[productId.toString()] = count.toString();
    return await save(cart);
  }

  Future<bool> delete(int productId) async {
    String value = await _prefs.getString(_key) ?? "{}";
    Map<String,String> cart = Map<String,String>.from(json.decode(value));
    if (cart.containsKey(productId)) {
      cart.remove(productId);
    }
    return await save(cart);
  }

  Future<Map<String,String>> getItems() async {
    String value = await _prefs.getString(_key) ?? "{}";
    Map<String,String> cart = Map<String,String>.from(json.decode(value));
    return cart;
  }

  Future<bool> clear() async {
    return await _prefs.remove(_key);
  }
}
