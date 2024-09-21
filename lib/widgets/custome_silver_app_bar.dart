import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rickandmorty_app/constants/my_colors.dart';
import 'package:rickandmorty_app/data/Models/characters_model.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({
    super.key,
    required this.character,
  });

  final CharactersModel character;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      stretch: true,
      backgroundColor: MyColors.myGrey,
      expandedHeight: 600,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Container(
          color: Colors.white54,
          child: Text(
            character.name,
            style: GoogleFonts.creepster(
              color: Colors.black,
              fontSize: 25,
            ),
          ),
        ),
        background: Hero(
          tag: character.id,
          child: Image.network(
            character.image,
            fit: BoxFit.cover,
            filterQuality: FilterQuality.high,
          ),
        ),
      ),
    );
  }
}
