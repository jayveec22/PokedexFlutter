// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PokemonTypes _$_$_PokemonTypesFromJson(Map<String, dynamic> json) {
  return _$_PokemonTypes(
    type: json['type'] == null
        ? null
        : PokemonType.fromJson(json['type'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_PokemonTypesToJson(_$_PokemonTypes instance) =>
    <String, dynamic>{
      'type': instance.type,
    };