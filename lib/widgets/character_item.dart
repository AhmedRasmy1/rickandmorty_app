import 'package:flutter/material.dart';
import 'package:rickandmorty_app/constants/my_colors.dart';
import 'package:rickandmorty_app/constants/strings.dart';
import 'package:rickandmorty_app/data/Models/characters_model.dart';

class CustomGridViewForCharachters extends StatelessWidget {
  const CustomGridViewForCharachters({
    super.key,
    required this.character,
  });

  final CharactersModel? character;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, charactersDetailsScreen,
            arguments: character);
      },
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(4),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            color: MyColors.myYellow),
        child: GridTile(
          footer: Hero(
            tag: character!.id,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              color: Colors.black54,
              alignment: Alignment.bottomCenter,
              child: Text(
                character!.name,
                style: const TextStyle(
                  height: 1.3,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: MyColors.myWhite,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          child: Container(
            color: MyColors.myWhite,
            child: character!.image.isNotEmpty
                ? FadeInImage.assetNetwork(
                    //TODO note Here !
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.high,
                    height: double.infinity,
                    placeholder: "assets/images/Loading.gif",
                    image: character!.image)
                : const Icon(
                    Icons.image,
                    color: MyColors.myGrey,
                    size: double.infinity,
                  ),
          ),
        ),
      ),
    );
  }
}
