import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';

import 'package:yumquick/screens/on_boarding_Screen.dart';
import 'package:yumquick/screens/splash_screen_two.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  initState() {
    Future.delayed(const Duration(seconds: 10), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SplashScreenTwo()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 203, 88),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/logo.svg",
                width: 200,
                height: 180,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "YUM",
                    style: GoogleFonts.poppins(
                        color: Color.fromARGB(255, 233, 83, 34),
                        fontSize: 34,
                        fontWeight: FontWeight.w800),
                  ),
                  Text(
                    "QUICK",
                    style: GoogleFonts.poppins(
                        color: Color.fromARGB(255, 248, 248, 248),
                        fontSize: 34,
                        fontWeight: FontWeight.w800),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
