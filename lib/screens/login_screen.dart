import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yumquick/screens/home_screen.dart';
import 'package:yumquick/screens/on_boarding_Screen.dart';
import 'package:yumquick/screens/sign_up_screen.dart';
import 'package:yumquick/screens/splash_screen_two.dart';
import 'package:yumquick/widgets/custom_filled_button.dart';
import 'package:yumquick/widgets/custom_input_text_field.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  int _currentIndex = 0;

  void _navigateToOnBoardingPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => OnBoardingScreen()),
    );
  }

  void _navigateToSplashPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SplashScreenTwo()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 248, 248),
      resizeToAvoidBottomInset: true, // Ensure UI adjusts with keyboard
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 245, 203, 88),
                ),
                height: 125,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: _navigateToSplashPage,
                      icon: const Icon(
                        size: 18,
                        Icons.arrow_back_ios,
                        color: Color.fromARGB(255, 233, 83, 34),
                      ),
                    ),
                    Text(
                      "Log In",
                      style: GoogleFonts.leagueSpartan(
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 248, 248, 248),
                      ),
                    ),
                    const SizedBox(width: 50),
                  ],
                ),
              ),
            ),

            // Bottom section with rounded corners
            Positioned(
              top: 110,
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  color: Color.fromARGB(255, 248, 248, 248),
                ),
                // Adjust height to avoid overlap with keyboard
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Welcome Text
                      Text(
                        "Welcome",
                        style: GoogleFonts.leagueSpartan(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromARGB(255, 57, 23, 19),
                        ),
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.",
                        style: GoogleFonts.leagueSpartan(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: const Color.fromARGB(255, 57, 23, 19),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "Email or Mobile Number",
                        style: GoogleFonts.leagueSpartan(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromARGB(255, 57, 23, 19),
                        ),
                      ),
                      // Email TextField
                      CustomInputTextField(
                        background: const Color.fromARGB(255, 243, 233, 181),
                        radius: 12,
                        height: 45,
                        width: double.infinity,
                        fontSize: 20,
                      ),
                      const SizedBox(height: 10),

                      Text(
                        "Password",
                        style: GoogleFonts.leagueSpartan(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromARGB(255, 57, 23, 19),
                        ),
                      ),

                      // Password TextField
                      CustomInputTextField(
                        background: const Color.fromARGB(255, 243, 233, 181),
                        radius: 12,
                        height: 45,
                        width: double.infinity,
                        fontSize: 20,
                        suffixIcon: const Icon(
                          Icons.visibility,
                          color: Color.fromARGB(255, 233, 83, 34),
                        ),
                        suffixIconBool: true,
                        obscure: true,
                      ),

                      const SizedBox(height: 5),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "Forgot Password",
                            style: GoogleFonts.leagueSpartan(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromARGB(255, 233, 83, 34),
                            ),
                          )),
                      const SizedBox(height: 20),

                      // Next Button
                      Align(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            CustomFilledButton(
                              text: "Log In",
                              callBack: _navigateToOnBoardingPage,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "or sign up with",
                              style: GoogleFonts.leagueSpartan(
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                                color: const Color.fromARGB(255, 57, 23, 19),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  "assets/GoogleIcon.svg",
                                  width: 40,
                                  height: 40,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                SvgPicture.asset(
                                  "assets/FacebookIcon.svg",
                                  width: 40,
                                  height: 40,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                SvgPicture.asset(
                                  "assets/FingerprintIcon.svg",
                                  width: 40,
                                  height: 40,
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12), // Round top-left corner
          topRight: Radius.circular(12), // Round top-right corner
        ),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: Color.fromARGB(255, 233, 83, 34),
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/home.svg",
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/categories.svg",
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/favorites.svg",
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/list.svg",
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/help.svg",
                ),
                label: "")
          ],
        ),
      ),
    );
  }
}
