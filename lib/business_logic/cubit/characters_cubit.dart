// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:rickandmorty_app/data/Models/characters_model.dart';
import 'package:rickandmorty_app/data/repository/character_repository.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  final CharacterRepository characterRepository;

  CharactersCubit(this.characterRepository) : super(CharactersInitial());

  Future<void> getAllCharacters() async {
    try {
      emit(CharactersLoading());
      final characters = await characterRepository.getAllCharacters();
      emit(CharactersLoaded(characters));
    } on Exception catch (e) {
      emit(CharactersError(e.toString()));
    }
  }
}
