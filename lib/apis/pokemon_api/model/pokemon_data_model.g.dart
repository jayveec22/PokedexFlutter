// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PokemonData _$_$_PokemonDataFromJson(Map<String, dynamic> json) {
  return _$_PokemonData(
    pokemonDetails: json['pokemonDetails'] == null
        ? null
        : PokemonDetails.fromJson(
            json['pokemonDetails'] as Map<String, dynamic>),
    pokemonDescription: json['pokemonDescription'] == null
        ? null
        : PokemonDescription.fromJson(
            json['pokemonDescription'] as Map<String, dynamic>),
    pokemonEvolution: (json['pokemonEvolution'] as List)
        ?.map((e) => e == null
            ? null
            : PokemonEvolutionNode.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_PokemonDataToJson(_$_PokemonData instance) =>
    <String, dynamic>{
      'pokemonDetails': instance.pokemonDetails,
      'pokemonDescription': instance.pokemonDescription,
      'pokemonEvolution': instance.pokemonEvolution,
    };