import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:rickandmorty_app/constants/strings.dart';
import 'package:rickandmorty_app/data/Models/characters_model.dart';

class ApiServices {
  Dio? dio;

  ApiServices() {
    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: const Duration(seconds: 20), // استخدام Duration مباشرة
      receiveTimeout: const Duration(seconds: 20),
    );

    dio = Dio(options);
  }

  Future<dynamic> getAllCharacters() async {
    try {
      final Response response = await dio!.get('character');

      if (response.statusCode == 200) {
        List<CharactersModel> characters = (response.data['results'] as List)
            .map((character) => CharactersModel.fromJson(character))
            .toList();
        print(response.data);
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
