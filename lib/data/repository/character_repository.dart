// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:rickandmorty_app/data/webServices/api_services.dart';

class CharacterRepository {
  final ApiServices apiServices;

  CharacterRepository({required this.apiServices});

  Future<dynamic> getAllCharacters() async {
    final characters = await apiServices.getAllCharacters();
    return characters;
  }
}
