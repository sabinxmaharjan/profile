import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:login/pages/notification_screen.dart';
// import 'package:login/pages/loadingScreen.dart';
// import 'package:login/pages/profile_details.dart';
// import 'package:login/pages/loginPage.dart';
// import 'package:login/pages/profile_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // home: ProfileDetails(
      //   age: 28,
      //   name: "Suvekchya Shahi",
      //   profession: "Doctor",
      //   location: "Nepal",
      //   status: "Single",
      //   community: "Newar",
      //   dob: "1992-01-05",
      //   edu: "MD",
      //   height: 5.5,
      //   origin: "Butwal",
      //   residing: "USA",
      //   siblings: "Two",
      //   bio:
      //       "Hello my name is Suvechya Shahi. Hello my name is Suvechya ShahiHello my name is Suvechya ShahiHello my name is Suvechya ShahiHello my name is Suvechya Shahi",
      //   networkImage: NetworkImage(
      //       'https://images.unsplash.com/photo-1512310604669-443f26c35f52?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=375&q=80'),
      // ),


      // home: LoginPage(),

      home: NotificationScreen(),
    );
  }
}
