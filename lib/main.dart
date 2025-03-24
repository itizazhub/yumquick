import 'package:flutter/material.dart';
import 'package:yumquick/screens/recommendations_screen.dart';
import 'package:yumquick/screens/help_screen.dart';
import 'package:yumquick/screens/login_screen.dart';
import 'package:yumquick/screens/on_boarding_Screen.dart';
import 'package:yumquick/screens/sign_up_screen.dart';
import 'package:yumquick/screens/splash_screen.dart';
import 'package:yumquick/screens/home_screen.dart';
import 'package:yumquick/screens/splash_screen_two.dart';
import 'package:yumquick/widgets/best_seller_list_view.dart';

/*
---colors---
yellow 245, 203, 88
light yellow 243, 233, 181
orange 233, 83, 34
light orange 255, 222, 207
font 1 57, 23, 19 darkone
font 2 248, 248, 248 lightone
---font sizes---
paragraph 14 league spartan light
title 24 26 league spartan bold
subtitle 20 league spartan medium 
screen title 28 league spartan bold
*/

void main() {
  runApp(YumQuick());
}

class YumQuick extends StatelessWidget {
  YumQuick({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: SplashScreen(),
      home: SplashScreen(),
    );
  }
}
