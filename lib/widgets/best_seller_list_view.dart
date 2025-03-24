import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BestSellerListView extends StatelessWidget {
  BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  Container(
                    height: 108,
                    width: 70,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                          23), // Optional: Adds rounded corners to the image
                      child: Image.asset(
                        "assets/best_sellers/best_seller_${index + 1}.jpg",
                        fit: BoxFit
                            .cover, // Optional: Ensures the image covers the entire container
                      ),
                    ),
                  ),
                  Positioned(
                    bottom:
                        10, // Adjust the bottom position to place text appropriately
                    right:
                        0, // Adjust the left position to place text appropriately
                    child: Container(
                      padding: const EdgeInsets.only(top: 2, left: 2),
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 233, 83, 34),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(6),
                              bottomLeft: Radius.circular(6))),

                      // Optional: Adds a background to the text for better readability
                      child: Text(
                        "\$9.99",
                        style: GoogleFonts.leagueSpartan(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
