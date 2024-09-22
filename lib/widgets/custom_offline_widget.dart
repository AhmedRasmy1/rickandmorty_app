import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/my_colors.dart';

class CustomOfflineWidget extends StatelessWidget {
  const CustomOfflineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            Image.asset("assets/images/noIntetnetPhoto.png"),
            Text(
              'No Internet Connection',
              style: GoogleFonts.aBeeZee(
                color: MyColors.myGrey,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
