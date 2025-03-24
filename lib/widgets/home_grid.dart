import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeGrid extends StatelessWidget {
  HomeGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0, // Spacing between grid items horizontally
        mainAxisSpacing: 8.0, // Spacing between grid items vertically
        childAspectRatio: 0.7, // Adjust this for aspect ratio of the grid items
      ),
      itemCount: 6,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          elevation: 0,
          color: const Color.fromARGB(255, 248, 248, 248),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                clipBehavior:
                    Clip.none, // Allow clipping of widgets outside the Stack
                children: [
                  // Image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(18),
                    child: Image.asset(
                      "assets/best_sellers/best_seller_${index + 1}.jpg",
                      fit: BoxFit.cover,
                      height: 140,
                      width: double.infinity,
                    ),
                  ),
                  // Category Icon (Top-left)
                  Positioned(
                    top: 8,
                    left: 8,
                    child: CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.white.withOpacity(0.7),
                      child: Icon(
                        Icons.category,
                        size: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  // Favorite Icon (Top-right)
                  Positioned(
                    top: 8,
                    right: 8,
                    child: CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.white.withOpacity(0.7),
                      child: Icon(
                        Icons.favorite_border,
                        size: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom:
                        15, // Adjust the bottom position to place text appropriately
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
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Barbecue tacos",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.leagueSpartan(
                      color: Color.fromARGB(255, 57, 23, 19),
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 2, right: 2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color.fromARGB(255, 233, 83, 34),
                    ),
                    child: Row(
                      children: [
                        Text("3.5",
                            style: GoogleFonts.leagueSpartan(
                              color: Color.fromARGB(255, 248, 248, 248),
                              fontWeight: FontWeight.normal,
                              fontSize: 11,
                            )),
                        SvgPicture.asset("assets/rating.svg")
                      ],
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 125,
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur...",
                      style: GoogleFonts.leagueSpartan(
                        color: Color.fromARGB(255, 57, 23, 19),
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ), // Price
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: Color.fromARGB(255, 233, 83, 34),
                    foregroundColor: Color.fromARGB(255, 248, 248, 248),
                    child: Icon(
                      Icons.shopping_cart,
                      size: 12,
                    ),
                  )
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
