import 'package:flutter/material.dart';
import '../data/Models/characters_model.dart';
import 'characters_details_widget.dart';
import 'divider_widget.dart';

class CustomSilverList extends StatelessWidget {
  const CustomSilverList({super.key, required this.character});
  final CharactersModel character;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate([
        Container(
            color: const Color.fromARGB(255, 145, 108, 65),
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
                const DividerWidget(endIndent: 310),
                CharactersDetailssssss(
                    character: character,
                    text: "Type: ",
                    characterDetails: character.type),
                const DividerWidget(endIndent: 335),
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
