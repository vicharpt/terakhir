import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp_charpt/config/consts/colors.dart';
import 'package:mp_charpt/config/consts/text_style.dart';
import 'package:mp_charpt/presentation/templates/Formulir.dart';

class LoginPage extends StatelessWidget {
  final VoidCallback showRegisterPage;
  const LoginPage({super.key, required this.showRegisterPage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Formulir(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // title
              Container(
                alignment: Alignment.bottomCenter,
                height: Get.height * 0.25,
                width: Get.width,
                // color: AppColor.white,
                child: Text(
                  'Login',
                  style: ourStyle(fontSize: 32, fontWeight: fontBold, shadow: [
                    Shadow(
                        color: AppColor.black.withOpacity(0.25),
                        blurRadius: 4,
                        offset: Offset(0, 4))
                  ]),
                ),
              ),

              Container(
                height: Get.height * 0.4,
                width: Get.width,
                margin: EdgeInsets.only(right: Get.width * 0.29),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // inpunt username/email
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'username atau email...',
                        hintStyle: ourStyle(fontSize: 16, color: AppColor.grey.withOpacity(0.6)),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        filled: true,
                        fillColor: AppColor.white.withOpacity(0.95),
                      ),
                      autofocus: true,
                      keyboardType: TextInputType.emailAddress,
                    ),

                    // inpunt password
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Password...',
                        border: InputBorder.none,
                      ),
                      obscureText: true,
                      keyboardType: TextInputType.text,
                    ),
                  ],
                ),
              )

              // Slide button login

              // are you a new user?
            ],
          ),
        ),
      ),
    );
  }
}
