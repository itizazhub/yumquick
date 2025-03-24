import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yumquick/screens/login_screen.dart';
import 'dart:async';
import 'package:yumquick/screens/on_boarding_Screen.dart';
import 'package:yumquick/screens/sign_up_screen.dart';
import 'package:yumquick/widgets/custom_filled_button.dart';

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

class SplashScreenTwo extends StatefulWidget {
  SplashScreenTwo({super.key});
  @override
  State<SplashScreenTwo> createState() => _SplashScreenTwoState();
}

class _SplashScreenTwoState extends State<SplashScreenTwo> {
  void _navigateToLogInPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
    );
  }

  void _navigateToSignUpPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SignUpScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 233, 83, 34),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                color: const Color.fromARGB(255, 245, 203, 88),
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
                        color: const Color.fromARGB(255, 245, 203, 88),
                        fontSize: 34,
                        fontWeight: FontWeight.w800),
                  ),
                  Text(
                    "QUICK",
                    style: GoogleFonts.poppins(
                        color: const Color.fromARGB(255, 248, 248, 248),
                        fontSize: 34,
                        fontWeight: FontWeight.w800),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 295,
                child: Text(
                  textAlign: TextAlign.center,
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.",
                  style: GoogleFonts.poppins(
                      color: const Color.fromARGB(255, 248, 248, 248),
                      fontSize: 14,
                      fontWeight: FontWeight.normal),
                ),
              ),
              const SizedBox(height: 20),
              CustomFilledButton(
                backgroundColor: const Color.fromARGB(255, 245, 203, 88),
                foregroundcolor: const Color.fromARGB(255, 233, 83, 34),
                text: "Log In",
                callBack: _navigateToLogInPage,
              ),
              const SizedBox(height: 5),
              CustomFilledButton(
                backgroundColor: const Color.fromARGB(255, 248, 248, 248),
                foregroundcolor: const Color.fromARGB(255, 233, 83, 34),
                text: "Sign Up",
                callBack: _navigateToSignUpPage,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
