import 'package:rickandmorty_app/data/Models/characters_model.dart';
import 'package:rickandmorty_app/data/webServices/api_services.dart';

class CharacterRepository {
  ApiServices apiServices;
  CharacterRepository({
    required this.apiServices,
  });
  Future<List<CharactersModel>> getAllCharacters() async {
    final characters = await apiServices.getAllCharacters();
    return characters;
  }
}
