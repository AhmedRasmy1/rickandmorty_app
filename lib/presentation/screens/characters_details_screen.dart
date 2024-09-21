import 'package:flutter/material.dart';
import 'package:rickandmorty_app/data/Models/characters_model.dart';
import 'package:rickandmorty_app/widgets/custome_silver_app_bar.dart';
import 'package:rickandmorty_app/widgets/custome_silver_list.dart';

class CharactersDetailsScreen extends StatelessWidget {
  const CharactersDetailsScreen({super.key, required this.character});

  final CharactersModel character;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          CustomSliverAppBar(character: character),
          CustomSilverList(character: character)
        ],
      ),
    );
  }
}
