import 'package:flutter/material.dart';
import 'package:shop_app/bottom_navigationbar.dart';

import 'package:shop_app/drawer.dart';
import 'package:shop_app/loginscreen.dart';
import 'package:shop_app/mainscreen.dart';
import 'package:shop_app/newcategorie.dart';
import 'package:shop_app/slapshscreen.dart';

import 'New_mainscreen.dart';
import 'Screens/splash_screen.dart';
import 'categories.dart';
import 'slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
