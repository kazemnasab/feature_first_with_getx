import 'package:flutter/material.dart';

import 'core_font_constants.dart';

final ThemeData theme1 = ThemeData(
  primaryColor: Color.fromARGB(180, 84, 84, 86),
  appBarTheme: AppBarTheme(backgroundColor: Color.fromARGB(180, 84, 84, 86)),
  primaryColorDark: Colors.white,
  fontFamily: 'iransans',
  buttonTheme: ButtonThemeData(),
  textTheme: TextTheme(
    headline1: TextStyle(fontSize: 20, color: Colors.white),
  ),
  inputDecorationTheme: InputDecorationTheme(
    // Customize the text field style
    filled: true,
    fillColor: Colors.grey[200],
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: BorderSide(
        color: Colors.blue[500]!,
        width: 2.0,
      ),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
          textStyle: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontFamily: CoreFontsConstants.faPrimaryFontFamily),
          primary: Colors.white // Set the background color here
          )),
  // elevated button theme
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          textStyle:
              const TextStyle(fontSize: 20, fontStyle: FontStyle.italic))),
  // outlined button theme
  outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
    padding: const EdgeInsets.all(15),
    textStyle: const TextStyle(
      fontSize: 30,
    ),
  )),
  extensions: <ThemeExtension<dynamic>>[
    const CustomThemeColors(
      labelColor: Colors.white,
      danger: Color(0xFFEF9A9A),
    ),
  ],
  // Apply custom button theme
  // Add more properties as needed
);

@immutable
class CustomThemeColors extends ThemeExtension<CustomThemeColors> {
  const CustomThemeColors({
    required this.labelColor,
    required this.danger,
  });

  final Color? labelColor;
  final Color? danger;

  @override
  CustomThemeColors copyWith({Color? labelColor, Color? danger}) {
    return CustomThemeColors(
      labelColor: labelColor ?? this.labelColor,
      danger: danger ?? this.danger,
    );
  }

  @override
  CustomThemeColors lerp(CustomThemeColors? other, double t) {
    if (other is! CustomThemeColors) {
      return this;
    }
    return CustomThemeColors(
      labelColor: Color.lerp(labelColor, other.labelColor, t),
      danger: Color.lerp(danger, other.danger, t),
    );
  }

  // Optional
  @override
  String toString() =>
      'CustomThemeColors(labelColor: $labelColor, danger: $danger)';
}

LinearGradient gradientBackground() {
  return LinearGradient(
    colors: [
      Color.fromARGB(255, 76, 76, 76),
      Color.fromARGB(255, 121, 123, 125),
      Color.fromARGB(255, 121, 123, 125),
      Color.fromARGB(255, 76, 76, 76),
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    stops: [0.0, 0.3, 0.6, 1.0],
  );
}
