import 'package:ffuf_flutter_architecture/ffuf_flutter_architecture.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex_app_flutter/apis/pokemon_api/model/description_evolution_chain.dart';
import 'package:pokedex_app_flutter/apis/pokemon_api/model/description_flavor_texts.dart';

part 'pokemon_description_model.freezed.dart';
part 'pokemon_description_model.g.dart';

@freezed
abstract class PokemonDescription with _$PokemonDescription {
  factory PokemonDescription({
    @required
    @JsonKey(name: 'flavor_text_entries')
        List<FlavorTexts> flavorText,
    @required @JsonKey(name: 'evolution_chain') EvolutionChain evolutionChain,
  }) = _PokemonDescription;

  factory PokemonDescription.fromJson(Map<String, dynamic> json) =>
      _$PokemonDescriptionFromJson(json);
}
