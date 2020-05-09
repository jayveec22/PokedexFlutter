import 'dart:async';
import 'package:pokedex_app_flutter/models/app_state.dart';
import 'package:async_redux/async_redux.dart';
import 'package:pokedex_app_flutter/models/pokemon_model.dart';
import 'package:pokedex_app_flutter/api/pokemon_services.dart';

final pokemonServices = new PokemonServices();

class InitializePokemonListAction extends ReduxAction<AppState> {
  @override
  Future<AppState> reduce() async {
    List<Pokemon> value = await pokemonServices.loadCSV();
    return state.copy(initialPokemonList: value, pokemonList: value);
  }
}

class FilterPokemonListAction extends ReduxAction<AppState> {
  final String text;

  FilterPokemonListAction({this.text});

  @override
  AppState reduce() {
    List<Pokemon> value = text.isNotEmpty
        ? state.initialPokemonList.where((element) => element.name.contains(text)).toList()
        : state.initialPokemonList;

    return state.copy(pokemonList: value);
  }
}

class PokemonDetailPageNumber {
  final int payload;
  PokemonDetailPageNumber({this.payload});
}
