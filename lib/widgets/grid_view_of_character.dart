import 'package:flutter/material.dart';
import '../data/Models/characters_model.dart';
import 'character_item.dart';

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
        padding: EdgeInsets.zero,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of items per row
          crossAxisSpacing: 1, // Horizontal spacing between items
          mainAxisSpacing: 1, // Vertical spacing between items
          childAspectRatio: 2 / 3, // Aspect ratio of each item
        ),
        itemBuilder: (context, index) {
          return CustomGridViewForCharachters(
            character: allCharacters![index],
          );
        });
  }
}
