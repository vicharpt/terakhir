import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mp_charpt/bindings/network_binding.dart';
import 'package:mp_charpt/config/router/app_route.dart';
import 'package:mp_charpt/config/router/route_name.dart';
import 'package:mp_charpt/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MP Chaprt',
      theme: ThemeData(fontFamily: 'Nunito'),
      initialRoute: RouteName.splashScreen,
      getPages: AppRoute.getPages,
      initialBinding: NetworkBinding(),
    );
  }
}