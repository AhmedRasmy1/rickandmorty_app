import 'package:flutter/material.dart';
import 'package:rickandmorty_app/presentation/screens/characters_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const CharactersScreen());
    }
    return null;
  }
}
