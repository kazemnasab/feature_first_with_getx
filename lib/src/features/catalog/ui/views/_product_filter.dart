import 'package:feature_first_with_getx/src/features/home/domains/User.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class ProductFilterLinkerWidget extends StatelessWidget {
  ProductFilterLinkerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.black12, width: 1))),
      child: Row(
        children: [
          TextButton.icon(
            icon: FaIcon(FontAwesomeIcons.searchengin),
            label: Text('Filter'.tr),
            onPressed: () {},
          ),
          TextButton.icon(
            icon: Icon(Icons.sort),
            label: Text('Sort'.tr),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
