import 'package:flutter/material.dart';
import 'package:rickandmorty_app/data/Models/characters_model.dart';

class CustomGridViewForCharachters extends StatelessWidget {
  CustomGridViewForCharachters({
    super.key,
    required this.character,
  });

  CharactersModel? character;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Text(
            character!.name,
          ),
          Text(
            character!.gender,
          ),
          Text(
            character!.status,
          ),
          Text(
            character!.species,
          )
        ],
      ),
    ));
  }
}
