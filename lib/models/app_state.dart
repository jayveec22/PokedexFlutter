import 'package:pokedex_app_flutter/models/pokemon_data_model.dart';
import 'package:pokedex_app_flutter/models/pokemon_model.dart';

class AppState {
  List<Pokemon> initialPokemonList;
  List<Pokemon> pokemonList;
  PokemonData pokemonData;

  AppState({this.initialPokemonList, this.pokemonList, this.pokemonData});

  AppState copy(
          {List<Pokemon> initialPokemonList, List<Pokemon> pokemonList, PokemonData pokemonData}) =>
      AppState(
        initialPokemonList: initialPokemonList ?? this.initialPokemonList,
        pokemonList: pokemonList ?? this.pokemonList,
        pokemonData: pokemonData ?? this.pokemonData,
      );

  static AppState initialState() => AppState(
        initialPokemonList: [],
        pokemonList: [],
        pokemonData: PokemonData(),
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppState &&
          runtimeType == other.runtimeType &&
          initialPokemonList == other.initialPokemonList &&
          pokemonList == other.pokemonList &&
          pokemonData == other.pokemonData;

  @override
  int get hashCode =>
      initialPokemonList.hashCode ^ pokemonList.hashCode ^ pokemonData.hashCode;
}
