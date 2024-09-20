import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:rickandmorty_app/constants/strings.dart';
import 'package:rickandmorty_app/data/Models/characters_model.dart';

class ApiServices {
  Dio? dio;

  charactersApiServices() {
    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: 20 * 1000 as Duration, // 20 seconds
      receiveTimeout: 20 * 1000 as Duration, // 20 seconds
    );

    dio = Dio(options);
  }

  Future<List<CharactersModel>> getAllCharacters() async {
    try {
      final Response response = await dio!.get('character');

      List<CharactersModel> characters = (response.data['results'] as List)
          .map((character) => CharactersModel.fromJson(character))
          .toList();

      if (response.statusCode == 200) {
        return characters;
      } else {
        return [];
      }
    } on Exception catch (e) {
      debugPrint('Error fetching characters: $e');
      return [];
    }
  }
}
