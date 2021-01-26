import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
// import 'package:login/pages/loadingScreen.dart';
import 'package:login/pages/loginPage.dart';
// import 'package:login/pages/profile_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // home: LoadingScreen(),
      home: LoginPage(),
    );
  }
}
