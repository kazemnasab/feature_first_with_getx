import 'package:flutter/material.dart';
import 'package:get/get.dart';

Container CustomSaving() {
  return Container(
    color: Colors.transparent,
    child: Center(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ CircularProgressIndicator(), SizedBox(width: 5,), Text("Saving".tr, style: TextStyle(fontSize: 14, color: Colors.blueGrey) ,)])),
  );
  /*return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [CircularProgressIndicator()]);*/
}
