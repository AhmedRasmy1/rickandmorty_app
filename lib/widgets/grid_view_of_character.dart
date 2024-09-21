import 'package:flutter/material.dart';
import 'package:rickandmorty_app/data/Models/characters_model.dart';
import 'package:rickandmorty_app/widgets/character_item.dart';

class GridViewCharacter extends StatelessWidget {
  const GridViewCharacter({
    super.key,
    required this.allCharacters,
  });

  final List<CharactersModel>? allCharacters;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: allCharacters!.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of items per row
          crossAxisSpacing: 10, // Horizontal spacing between items
          mainAxisSpacing: 10, // Vertical spacing between items
          childAspectRatio: 0.6, // Aspect ratio of each item
        ),
        itemBuilder: (context, index) {
          return CustomGridViewForCharachters(
            character: allCharacters![index],
          );
        });
  }
}
