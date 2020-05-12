import 'dart:async';
import 'package:async_redux/async_redux.dart';
import 'package:pokedex_app_flutter/apis/pokemon_api/handler/pokemon_list_csv.dart';
import 'package:pokedex_app_flutter/apis/pokemon_api/model/pokemon_model.dart';
import 'package:pokedex_app_flutter/apis/pokemon_api/pokemon_services.dart';
import 'package:pokedex_app_flutter/state/app_state.dart';

final pokemonServices = new PokemonServices();

class InitializePokemonListAction extends ReduxAction<AppState> {
  @override
  Future<AppState> reduce() async {
    List<Pokemon> value = await PokemonListCsv().loadCSV();
    return state.copyWith(initialPokemonList: value, pokemonList: value);
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

    return state.copyWith(pokemonList: value);
  }
}