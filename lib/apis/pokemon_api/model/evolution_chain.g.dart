// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'evolution_chain.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Chain _$_$_ChainFromJson(Map<String, dynamic> json) {
  return _$_Chain(
    evolvesTo: (json['evolves_to'] as List)
        ?.map(
            (e) => e == null ? null : Chain.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    species: json['species'] == null
        ? null
        : Species.fromJson(json['species'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_ChainToJson(_$_Chain instance) => <String, dynamic>{
      'evolves_to': instance.evolvesTo,
      'species': instance.species,
    };