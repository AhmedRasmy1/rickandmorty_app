import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants/strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff22333b),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/wallpaper(3).png",
                scale: 1.2,
                fit: BoxFit.fill,
              ),
              const SizedBox(height: 20),
              Text(
                "Rick And Morty",
                style: GoogleFonts.creepster(
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Here you can find all your favorite characters and character details .. Enjoy",
                textAlign: TextAlign.center,
                style: GoogleFonts.aBeeZee(
                  color: Colors.white54,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 230, 174, 111),
                  minimumSize: const Size(150, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, charactersScreen, (route) => false);
                },
                child: Text(
                  'Get Started',
                  style: GoogleFonts.aBeeZee(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ), // Navigate to the characters screen
            ],
          ),
        ),
      ),
    );
  }
}
