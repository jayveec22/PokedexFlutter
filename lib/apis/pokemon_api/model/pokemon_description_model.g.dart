// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_description_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PokemonDescription _$_$_PokemonDescriptionFromJson(
    Map<String, dynamic> json) {
  return _$_PokemonDescription(
    flavorText: (json['flavor_text_entries'] as List)
        ?.map((e) =>
            e == null ? null : FlavorTexts.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    evolutionChain: json['evolution_chain'] == null
        ? null
        : EvolutionChain.fromJson(
            json['evolution_chain'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_PokemonDescriptionToJson(
        _$_PokemonDescription instance) =>
    <String, dynamic>{
      'flavor_text_entries': instance.flavorText,
      'evolution_chain': instance.evolutionChain,
    };