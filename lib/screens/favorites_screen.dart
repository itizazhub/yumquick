import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yumquick/screens/home_screen.dart';
import 'package:yumquick/screens/sign_up_screen.dart';
import 'package:yumquick/widgets/best_seller_list_view.dart';
import 'package:yumquick/widgets/home_grid.dart';

class FavoritesScreen extends StatefulWidget {
  FavoritesScreen({super.key});
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  int _currentIndex = 0;

  // Function to handle navigation
  void _onNavItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });

    // Add your custom navigation logic here
    // For now, we will navigate to a different screen based on the index
    if (_currentIndex == 0) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    } else if (_currentIndex == 1) {
      // Handle second navigation, e.g., go to Categories
    } else if (_currentIndex == 2) {
      // Handle third navigation, e.g., go to Favorites
    } else if (_currentIndex == 3) {
      // Handle fourth navigation, e.g., go to List
    } else if (_currentIndex == 4) {
      // Handle fifth navigation, e.g., go to Help
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 245, 203, 88),
      resizeToAvoidBottomInset: true, // Ensure UI adjusts with keyboard
      body: SafeArea(
        child: Stack(children: [
          // Top section (title, back button)
          Positioned(
            top: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 110,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 245, 203, 88),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      // Go back to the previous screen
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      size: 18,
                      Icons.arrow_back_ios,
                      color: Color.fromARGB(255, 233, 83, 34),
                    ),
                  ),
                  Text(
                    "Favorites",
                    style: GoogleFonts.leagueSpartan(
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 248, 248, 248),
                    ),
                  ),
                  SizedBox(width: 50), // You can remove this if not needed
                ],
              ),
            ),
          ),

          // Bottom section with rounded corners
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            top: 100,
            child: Container(
              height: MediaQuery.of(context).size.height * .8,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 248, 248, 248),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              // Adjust height to avoid overlap with keyboard
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      "Discover our most popular dishes!",
                      style: GoogleFonts.leagueSpartan(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromARGB(255, 233, 83, 34),
                      ),
                    ),
                    const SizedBox(height: 10),
                    // For example, you can add a list of products here
                    HomeGrid()
                  ],
                ),
              ),
            ),
          ),
        ]),
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
          onTap: _onNavItemTapped,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/home.svg"),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/categories.svg"),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/favorites.svg"),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/list.svg"),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/help.svg"),
              label: "",
            ),
          ],
        ),
      ),
    );
  }
}
