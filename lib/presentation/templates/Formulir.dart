import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp_charpt/config/consts/colors.dart';

class Formulir extends StatelessWidget {
  final Widget child;
  const Formulir({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // background yellow
          Container(
            height: Get.height,
            width: Get.width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColor.yellow,
                  AppColor.lightYellow,
                ],
              ),
            ),
          ),

          // circle background
          Image.asset('assets/images/bg-formulir.png', fit: BoxFit.cover),

          // content
          child
        ],
      ),
    );
  }
}
