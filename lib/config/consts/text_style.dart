import 'package:flutter/material.dart';
import 'package:mp_charpt/config/consts/colors.dart';

const FontWeight fontMedium = FontWeight.w500;
const FontWeight fontBold = FontWeight.w700;

ourStyle({
  Color? color,
  double? fontSize,
  FontWeight? fontWeight,
  List<Shadow>? shadow,
}) {
  return TextStyle(
    color: color ?? AppColor.white,
    fontSize: fontSize ?? 16,
    fontWeight: fontWeight ?? FontWeight.bold,
    shadows: shadow ?? [],
  );
}
