import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp_charpt/config/consts/colors.dart';
import 'package:mp_charpt/config/consts/text_style.dart';
import 'package:mp_charpt/config/router/route_name.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Get.offAllNamed(RouteName.authScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: Get.width,
          height: Get.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColor.yellow,
                AppColor.lightYellow,
              ],
            ),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              // logo
              Padding(
                padding: const EdgeInsets.only(bottom: 130),
                child: Image.asset('assets/logo/logo.png'),
              ),

              // title
              Padding(
                padding: const EdgeInsets.only(top: 130),
                child: Text(
                  'MP Charpt',
                  style:
                      ourStyle(fontSize: 40, fontWeight: fontMedium, shadow: [
                    Shadow(
                      color: AppColor.black.withOpacity(0.25),
                      blurRadius: 4,
                      offset: Offset(0, 4),
                    )
                  ]),
                ),
              ),
            ],
          )),
    );
  }
}
