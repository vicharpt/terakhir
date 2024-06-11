import 'package:flutter/material.dart';
import 'package:mp_charpt/presentation/pages/login_page.dart';
import 'package:mp_charpt/presentation/pages/register_page.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool showLoginPage = true;

  void _toggleScreen() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return showLoginPage? LoginPage(showRegisterPage: _toggleScreen): RegisterPage(showLoginPage: _toggleScreen);
  }
}
