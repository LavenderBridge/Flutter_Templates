import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarContents extends StatelessWidget {
  AppBarContents({super.key});

  // final _bottomBarController = Get.put(CustomBottomBarController());

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Welcome back!",
          style: GoogleFonts.montserrat(
              color: Colors.white, fontWeight: FontWeight.w100, fontSize: 12),
        ),
        Text(
          [
            "NutriDiet",
            "Recommendations",
            "Custom Meal",
            "Browse Nutritionists",
            "Your Profile"
          ][0],
          // [_bottomBarController.currentIndex.value],
          style: GoogleFonts.montserrat(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
