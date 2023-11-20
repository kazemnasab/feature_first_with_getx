import 'package:flutter/material.dart';
import 'package:get/get.dart';

AppBar CustomAppBar(
    {required BuildContext context,
    required String title,
    required Function()? backFunction,
    Widget? leading = null}) {
  return AppBar(
    backgroundColor: Theme.of(context).primaryColor,
    centerTitle: true,

    leading: Center(
        child: leading != null
            ? leading
            : Row(children: [
                Text("     "),
                Icon(Icons.info_outline),
                Text('${title}'.tr)
              ])),
    leadingWidth: 100, // default is 56
    title: Center(
      child: GestureDetector(
          onTap: () {
            Navigator.of(context).popUntil((route) => route.isFirst);
            //Navigator.of(context).popUntil((route) => true);
            //Get.toNamed('/home/dashboard');// Get.until((route) => Get.currentRoute == '/home/dashboard');
            //Navigator.popUntil(context, ModalRoute.withName('/home/dashboard'));
          },
          child:
              Text("Citizen")),
    ),
    actions: [
      Row(
        children: [
          IconButton(
            icon: Icon(Icons.arrow_forward, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          SizedBox(
            width: 26,
          )
        ],
      )
    ],
  );
}
