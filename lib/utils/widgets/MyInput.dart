import 'package:flutter/material.dart';
import 'package:mp_charpt/config/consts/colors.dart';
import 'package:mp_charpt/config/consts/text_style.dart';

class MyInput extends StatelessWidget {
  final TextEditingController controller;
  final BorderRadiusGeometry? borderRadius;
  final IconData icon;
  final String hint;
  final String? shadowOffset;
  final bool hiddenPassword;

  const MyInput({
    super.key,
    required this.controller,
    required this.icon,
    required this.hint,
    this.hiddenPassword = false,
    this.borderRadius,
    this.shadowOffset,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        borderRadius: borderRadius ?? BorderRadius.circular(0),
        boxShadow: [
          BoxShadow(
            color: AppColor.black.withOpacity(0.25),
            blurRadius: 7,
            offset: Offset(0, shadowOffset == 'bottom' ? 2 : -2),
          ),
        ],
      ),
      child: TextField(
        controller: controller,
        obscureText: hiddenPassword,
        decoration: InputDecoration(
          prefixIcon: Icon(icon)
        ),
      ),
    );
  }
}
