import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:rickandmorty_app/constants/strings.dart';
import 'package:rickandmorty_app/data/Models/characters_model.dart';

class ApiServices {
  Dio? dio;
  int page = 1;

  ApiServices() {
    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: const Duration(seconds: 20),
      receiveTimeout: const Duration(seconds: 20),
    );
    dio = Dio(options);
  }

  Future<List<CharactersModel>> getAllCharacters() async {
    List<CharactersModel> allCharacters = [];

    while (true) {
      try {
        final Response response = await dio!.get('character?page=$page');
        final data = response.data;

        if (response.statusCode == 200) {
          List<CharactersModel> characters = (data['results'] as List)
              .map((character) => CharactersModel.fromJson(character))
              .toList();

          allCharacters.addAll(characters);

          if (data['info']['next'] == null) {
            break;
          }

          page++;
        } else {
          break;
        }
      } on Exception catch (e) {
        debugPrint('Error fetching characters: $e');
        break;
      }
    }

    return allCharacters;
  }
}
