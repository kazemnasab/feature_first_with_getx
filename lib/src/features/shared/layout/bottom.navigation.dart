import '../l10n/extension.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class CustomBottomNavigation extends StatefulWidget {
  const CustomBottomNavigation({super.key});

  @override
  State<CustomBottomNavigation> createState() => _CustomBottomNavigationState();
}

class _CustomBottomNavigationState extends State<CustomBottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        selectedFontSize: 11,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        unselectedFontSize: 11,
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home'.translate,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'category'.translate,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'cart'.translate,
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.user),
            label: 'profile'.translate,
          ),
        ]);
  }
}
