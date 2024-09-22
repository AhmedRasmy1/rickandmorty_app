// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rickandmorty_app/business_logic/cubit/characters_cubit.dart';
import 'package:rickandmorty_app/constants/my_colors.dart';
import 'package:rickandmorty_app/data/Models/characters_model.dart';
import 'package:rickandmorty_app/widgets/grid_view_of_character.dart';

class CharactersScreen extends StatefulWidget {
  const CharactersScreen({super.key});

  @override
  State<CharactersScreen> createState() => _CharactersScreenState();
}

class _CharactersScreenState extends State<CharactersScreen> {
  List<CharactersModel>? allCharacters;
  List<CharactersModel> searchedForCharacters = [];
  bool _isSearching = false;
  final TextEditingController _searchController = TextEditingController();

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
        return _isSearching && searchedForCharacters.isNotEmpty
            ? GridViewCharacter(allCharacters: searchedForCharacters)
            : GridViewCharacter(allCharacters: allCharacters);
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

  void _startSearch() {
    setState(() {
      _isSearching = true;
    });
  }

  void _stopSearch() {
    setState(() {
      _isSearching = false;
      _searchController.clear();
    });
  }

  void _searchForCharacter(String search) {
    searchedForCharacters = allCharacters!
        .where((character) =>
            character.name.toLowerCase().contains(search.toLowerCase()))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff22333b),
      appBar: AppBar(
        backgroundColor: MyColors.myGrey,
        title: _isSearching
            ? TextField(
                controller: _searchController,
                cursorColor: MyColors.myYellow,
                decoration: const InputDecoration(
                  hintText: 'Search...',
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: MyColors.myYellow, fontSize: 20),
                ),
                style: const TextStyle(color: MyColors.myYellow),
                onChanged: (value) => _searchForCharacter(value),
              )
            : Text(
                'Rick And Morty',
                style: GoogleFonts.creepster(
                    color: MyColors.myYellow, fontSize: 40),
              ),
        centerTitle: true,
        actions: _isSearching
            ? [
                IconButton(
                  icon: const Icon(Icons.clear, color: MyColors.myYellow),
                  onPressed: _stopSearch,
                )
              ]
            : [
                IconButton(
                  icon: const Icon(Icons.search,
                      color: MyColors.myYellow, size: 30),
                  onPressed: _startSearch,
                )
              ],
      ),
      body: buildBLocWidget(),
    );
  }
}
