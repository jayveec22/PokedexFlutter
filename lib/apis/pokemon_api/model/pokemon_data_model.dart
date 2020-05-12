import 'package:pokedex_app_flutter/apis/pokemon_api/model/pokemon_description_model.dart';
import 'package:pokedex_app_flutter/apis/pokemon_api/model/pokemon_details_model.dart';
import 'package:pokedex_app_flutter/apis/pokemon_api/model/pokemon_evolution_node.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_data_model.freezed.dart';
part 'pokemon_data_model.g.dart';


  @freezed
  abstract class PokemonData with _$PokemonData {
    factory PokemonData({
      @required PokemonDetails pokemonDetails,
      @required PokemonDescription pokemonDescription,
      @required List<PokemonEvolutionNode> pokemonEvolution,
    }) = _PokemonData;

    factory PokemonData.fromJson(Map<String, dynamic> json) => _$PokemonDataFromJson(json);
  }

