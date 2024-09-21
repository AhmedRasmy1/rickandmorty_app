import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rickandmorty_app/business_logic/cubit/characters_cubit.dart';
import 'package:rickandmorty_app/constants/my_colors.dart';
import 'package:rickandmorty_app/data/Models/characters_model.dart';
import 'package:rickandmorty_app/widgets/character_item.dart';
import 'package:rickandmorty_app/widgets/grid_view_of_character.dart';

class CharactersScreen extends StatefulWidget {
  const CharactersScreen({super.key});

  @override
  State<CharactersScreen> createState() => _CharactersScreenState();
}

class _CharactersScreenState extends State<CharactersScreen> {
  List<CharactersModel>? allCharacters;
  @override
  void initState() {
    super.initState();

    BlocProvider.of<CharactersCubit>(context).getAllCharacters();
  }

  Widget buildBLocWidget() {
    return BlocBuilder<CharactersCubit, CharactersState>(
        builder: (context, state) {
      if (state is CharactersLoading) {
        return const Center(
          child: CircularProgressIndicator(
            color: MyColors.myYellow,
          ),
        );
      } else if (state is CharactersLoaded) {
        allCharacters = state.characters;
        return GridViewCharacter(allCharacters: allCharacters);
      } else if (state is CharactersError) {
        return Center(
          child: Text(state.message),
        );
      }
      return const Center(
        child: Text("Something went wrong!"),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Rick and Morty',
            style: GoogleFonts.creepster(
              color: Colors.green,
              fontSize: 50,
              fontWeight: FontWeight.w700,
            )),
        backgroundColor: MyColors.myWhite,
      ),
      body: buildBLocWidget(),
    );
  }
}
