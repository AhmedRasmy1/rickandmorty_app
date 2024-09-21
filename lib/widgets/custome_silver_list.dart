import 'package:flutter/material.dart';
import 'package:rickandmorty_app/constants/my_colors.dart';
import 'package:rickandmorty_app/data/Models/characters_model.dart';
import 'package:rickandmorty_app/widgets/characters_details_widget.dart';
import 'package:rickandmorty_app/widgets/divider_widget.dart';

class CustomSilverList extends StatelessWidget {
  const CustomSilverList({super.key, required this.character});
  final CharactersModel character;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate([
        Container(
            color: MyColors.myGrey,
            height: 780,
            padding: const EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CharactersDetailssssss(
                    character: character,
                    text: "Name: ",
                    characterDetails: character.name),
                const DividerWidget(endIndent: 320),
                CharactersDetailssssss(
                    character: character,
                    text: "Status: ",
                    characterDetails: character.status),
                const DividerWidget(endIndent: 320),
                CharactersDetailssssss(
                    character: character,
                    text: "Species: ",
                    characterDetails: character.species),
                const DividerWidget(endIndent: 310),
                CharactersDetailssssss(
                    character: character,
                    text: "Gender: ",
                    characterDetails: character.gender),
                const DividerWidget(endIndent: 313),
                CharactersDetailssssss(
                    character: character,
                    text: "Origin: ",
                    characterDetails: character.origin.name),
                const DividerWidget(endIndent: 320),
                CharactersDetailssssss(
                    character: character,
                    text: "Location: ",
                    characterDetails: character.location.name),
                const DividerWidget(endIndent: 300),
              ],
            ))
      ]),
    );
  }
}
