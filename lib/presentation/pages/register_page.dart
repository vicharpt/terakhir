import 'package:flutter/material.dart';
    
class RegisterPage extends StatelessWidget {
  final VoidCallback showLoginPage;
  const RegisterPage({ super.key , required this.showLoginPage});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Container(),
    );
  }
}