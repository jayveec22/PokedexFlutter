import 'dart:async';
import 'package:async_redux/async_redux.dart';
import 'package:pokedex_app_flutter/apis/api_service.dart';
import 'package:pokedex_app_flutter/apis/pokemon_api/model/pokemon_data_model.dart';
import 'package:pokedex_app_flutter/apis/pokemon_api/model/pokemon_description_model.dart';
import 'package:pokedex_app_flutter/apis/pokemon_api/model/pokemon_details_model.dart';
import 'package:pokedex_app_flutter/apis/pokemon_api/model/pokemon_evolution_node.dart';
import 'package:pokedex_app_flutter/apis/pokemon_api/pokemon_services.dart';
import 'package:pokedex_app_flutter/state/app_state.dart';

final pokemonServices = new PokemonServices();

class FetchPokemonDataAction extends ReduxAction<AppState> {
  final int id;

  FetchPokemonDataAction({this.id});

  @override
  Future<AppState> reduce() async {
    await ApiService().initApis();

    PokemonDetails pokemonDetails =
        await ApiService().pokemonDetailsApi.fetchPokemonDetails(id);

    PokemonDescription pokemonDescription =
        await ApiService().pokemonDescriptionApi.fetchPokemonDescription(id);

    List<PokemonEvolutionNode> pokemonEvolution = await ApiService()
        .pokemonEvolutionApi
        .fetchPokemonEvolution(pokemonDescription.evolutionChain.url);

    PokemonData value = PokemonData(
      pokemonDetails: pokemonDetails,
      pokemonDescription: pokemonDescription,
      pokemonEvolution: pokemonEvolution,
    );
    return state.copyWith(pokemonData: value);
  }
}
