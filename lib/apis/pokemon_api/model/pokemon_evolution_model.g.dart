// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_evolution_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PokemonEvolution _$_$_PokemonEvolutionFromJson(Map<String, dynamic> json) {
  return _$_PokemonEvolution(
    id: json['id'] as int,
    chain: json['chain'] == null
        ? null
        : Chain.fromJson(json['chain'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_PokemonEvolutionToJson(
        _$_PokemonEvolution instance) =>
    <String, dynamic>{
      'id': instance.id,
      'chain': instance.chain,
    };
