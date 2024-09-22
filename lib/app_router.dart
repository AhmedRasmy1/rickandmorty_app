import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'business_logic/cubit/characters_cubit.dart';
import 'constants/strings.dart';
import 'data/Models/characters_model.dart';
import 'data/repository/character_repository.dart';
import 'data/webServices/api_services.dart';
import 'presentation/screens/characters_details_screen.dart';
import 'presentation/screens/characters_screen.dart';
import 'presentation/screens/home_screen.dart';

class AppRouter {
  late CharacterRepository characterRepository;
  late CharactersCubit charactersCubit;

  AppRouter() {
    characterRepository = CharacterRepository(
      apiServices: ApiServices(),
    );
    charactersCubit = CharactersCubit(characterRepository);
  }

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );

      case charactersScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => charactersCubit,
            child: const CharactersScreen(),
          ),
        );

      case charactersDetailsScreen:
        final character = settings.arguments as CharactersModel;
        return MaterialPageRoute(
            builder: (_) => CharactersDetailsScreen(
                  character: character,
                ));
    }

    return null;
  }
}
