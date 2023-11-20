import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;

class NumberFormatText extends Text {
  NumberFormatText(
      String data, {

        Key? key,
        TextStyle? style,
        TextAlign? textAlign,
        TextDirection? textDirection,
        Locale? locale,
        bool? softWrap,
        TextOverflow? overflow,
        double? textScaleFactor,
        int? maxLines,
        String? startLabel,
        String? semanticsLabel,
        TextWidthBasis? textWidthBasis,
      }) : super(
    (startLabel!= null ? startLabel +": " : "")+_formatNumber(data),
    key: key,
    style: style,
    textAlign: textAlign,
    textDirection: textDirection,
    locale: locale,
    softWrap: softWrap,
    overflow: overflow,
    textScaleFactor: textScaleFactor,
    maxLines: maxLines,
    semanticsLabel: semanticsLabel,
    textWidthBasis: textWidthBasis,
  );

  static String _formatNumber(String data) {
    if (data.isEmpty) return data;
    final double value = double.tryParse(data) ?? 0;
    final intl.NumberFormat numberFormat = intl.NumberFormat('#,##0.##', 'en_US');
    return numberFormat.format(value);
  }
}
