// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppState _$_$_AppStateFromJson(Map<String, dynamic> json) {
  return _$_AppState(
    initialPokemonList: (json['initialPokemonList'] as List)
        ?.map((e) =>
            e == null ? null : Pokemon.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    pokemonList: (json['pokemonList'] as List)
        ?.map((e) =>
            e == null ? null : Pokemon.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    pokemonData: json['pokemonData'] == null
        ? null
        : PokemonData.fromJson(json['pokemonData'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_AppStateToJson(_$_AppState instance) =>
    <String, dynamic>{
      'initialPokemonList': instance.initialPokemonList,
      'pokemonList': instance.pokemonList,
      'pokemonData': instance.pokemonData,
    };
