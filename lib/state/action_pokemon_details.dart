import 'dart:async';
import 'package:async_redux/async_redux.dart';
import 'package:pokedex_app_flutter/api/pokemon_services.dart';
import 'package:pokedex_app_flutter/models/app_state.dart';
import 'package:pokedex_app_flutter/models/pokemon_data_model.dart';

final pokemonServices = new PokemonServices();

class FetchPokemonDataAction extends ReduxAction<AppState> {
  final int id;

  FetchPokemonDataAction({this.id});
  @override
  Future<AppState> reduce() async {
    PokemonData value = await pokemonServices.fetchPokemonData(this.id);
    return state.copy(pokemonData: value);
  }
}
