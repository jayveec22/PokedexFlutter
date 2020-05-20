import 'package:ffuf_flutter_architecture/ffuf_flutter_architecture.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex_app_flutter/apis/pokemon_api/model/evolution_chain.dart';

part 'pokemon_evolution_model.freezed.dart';
part 'pokemon_evolution_model.g.dart';

@freezed
abstract class PokemonEvolution with _$PokemonEvolution {
  factory PokemonEvolution({
    @required int id,
    @required Chain chain,
  }) = _PokemonEvolution;

  factory PokemonEvolution.fromJson(Map<String, dynamic> json) =>
      _$PokemonEvolutionFromJson(json);
}
