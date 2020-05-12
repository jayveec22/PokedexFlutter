// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PokemonDetails _$_$_PokemonDetailsFromJson(Map<String, dynamic> json) {
  return _$_PokemonDetails(
    name: json['name'] as String,
    id: json['id'] as int,
    weight: json['weight'] as int,
    height: json['height'] as int,
    stats: (json['stats'] as List)
        ?.map((e) =>
            e == null ? null : Statistics.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    types: (json['types'] as List)
        ?.map((e) =>
            e == null ? null : PokemonTypes.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_PokemonDetailsToJson(_$_PokemonDetails instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'weight': instance.weight,
      'height': instance.height,
      'stats': instance.stats,
      'types': instance.types,
    };
