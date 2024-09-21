import 'package:flutter/material.dart';
import 'package:rickandmorty_app/constants/my_colors.dart';
import 'package:rickandmorty_app/data/Models/characters_model.dart';

class CustomGridViewForCharachters extends StatelessWidget {
  const CustomGridViewForCharachters({
    super.key,
    required this.character,
  });

  final CharactersModel? character;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: MyColors.myYellow),
    );
  }
}
