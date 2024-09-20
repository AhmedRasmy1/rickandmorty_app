// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:core';

class CharactersModel {
  int id;
  String name;
  String status;
  String species;
  String gender;
  Origin origin;
  Location location;
  String image;
  List<String> episode;
  String url;
  DateTime created;

  CharactersModel({
    required this.id,
    required this.name,
    required this.status,
    required this.species,
    required this.gender,
    required this.origin,
    required this.location,
    required this.image,
    required this.episode,
    required this.url,
    required this.created,
  });

  factory CharactersModel.fromJson(Map<String, dynamic> json) {
    return CharactersModel(
      id: json['id'],
      name: json['name'],
      status: json['status'],
      species: json['species'],
      gender: json['gender'],
      origin: Origin.fromJson(json['origin']),
      location: Location.fromJson(json['location']),
      image: json['image'],
      episode: List<String>.from(json['episode'] ?? []),
      url: json['url'],
      created: DateTime.parse(json['created']),
    );
  }
}

class Location {
  String name;
  String url;
  Location({
    required this.name,
    required this.url,
  });

  factory Location.fromJson(json) {
    return Location(
      name: json['name'],
      url: json['url'],
    );
  }
}

class Origin {
  String name;
  String url;
  Origin({
    required this.name,
    required this.url,
  });

  factory Origin.fromJson(Map<String, dynamic> json) {
    return Origin(
      name: json['name'],
      url: json['url'],
    );
  }
}
