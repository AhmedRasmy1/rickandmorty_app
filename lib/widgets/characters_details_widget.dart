import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rickandmorty_app/constants/my_colors.dart';
import 'package:rickandmorty_app/data/Models/characters_model.dart';

class CharactersDetailssssss extends StatelessWidget {
  const CharactersDetailssssss({
    super.key,
    required this.character,
    this.text,
    this.characterDetails,
  });
  final String? text;
  final String? characterDetails;
  final CharactersModel character;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: text,
            style: GoogleFonts.aBeeZee(
              color: MyColors.myYellow,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: characterDetails,
            style: GoogleFonts.aBeeZee(
              color: MyColors.myWhite,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
