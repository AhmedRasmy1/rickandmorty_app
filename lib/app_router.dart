import 'package:flutter/material.dart';
import 'package:rickandmorty_app/constants/strings.dart';
import 'package:rickandmorty_app/presentation/screens/characters_details_screen.dart';
import 'package:rickandmorty_app/presentation/screens/characters_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case charactersScreen:
        return MaterialPageRoute(builder: (_) => const CharactersScreen());

      case charactersDetailsScreen:
        return MaterialPageRoute(
            builder: (_) => const CharactersDetailsScreen());
    }

    return null;
  }
}
