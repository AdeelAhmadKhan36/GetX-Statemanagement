import 'package:flutter/material.dart';
import 'package:getx_statemanagement/res/routes/routes.dart';
import 'package:getx_statemanagement/view/Counte_Home.dart';
import 'package:getx_statemanagement/view/HomePage.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagement/view/Language_home.dart';
import 'package:getx_statemanagement/view/Languages.dart';
import 'package:getx_statemanagement/view/Pagetwo.dart';
import 'package:getx_statemanagement/view/auth/Login_Api.dart';
import 'package:getx_statemanagement/view/favourit_app.dart';
import 'package:getx_statemanagement/view/image_pick.dart';
import 'package:getx_statemanagement/view/opacity_example2.dart';
import 'package:getx_statemanagement/view/switch_notification.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      locale: Locale('en','us'),
      fallbackLocale: Locale('eng', 'us'),
      translations: Languages(),

      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: My_HomePage(),
      getPages:AppRoutes.appRoutes(),

    );
  }
}


