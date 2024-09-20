import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rickandmorty_app/business_logic/cubit/characters_cubit.dart';
import 'package:rickandmorty_app/constants/strings.dart';
import 'package:rickandmorty_app/data/repository/character_repository.dart';
import 'package:rickandmorty_app/presentation/screens/characters_details_screen.dart';
import 'package:rickandmorty_app/presentation/screens/characters_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    CharacterRepository? characterRepository;
    CharactersCubit? charactersCubit;

    switch (settings.name) {
      case charactersScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => charactersCubit!,
            child: const CharactersScreen(),
          ),
        );

      case charactersDetailsScreen:
        return MaterialPageRoute(
            builder: (_) => const CharactersDetailsScreen());
    }

    return null;
  }
}
