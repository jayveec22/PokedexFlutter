import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex_app_flutter/apis/pokemon_api/model/pokemon_statistics.dart';
import 'package:pokedex_app_flutter/apis/pokemon_api/model/pokemon_types.dart';

part 'pokemon_details_model.freezed.dart';
part 'pokemon_details_model.g.dart';

@freezed
abstract class PokemonDetails with _$PokemonDetails {
  factory PokemonDetails({
    @required String name,
    @required int id,
    @required int weight,
    @required int height,
    @required List<Statistics> stats,
    @required List<PokemonTypes> types,
  }) = _PokemonDetails;

  factory PokemonDetails.fromJson(Map<String, dynamic> json) =>
      _$PokemonDetailsFromJson(json);

}
