import 'package:ffuf_flutter_architecture/ffuf_flutter_architecture.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex_app_flutter/apis/pokemon_api/model/pokemon_type.dart';

part 'pokemon_types.freezed.dart';
part 'pokemon_types.g.dart';

@freezed
abstract class PokemonTypes with _$PokemonTypes {
  factory PokemonTypes({
    @required PokemonType type,
  }) = _PokemonTypes;

  factory PokemonTypes.fromJson(Map<String, dynamic> json) =>
      _$PokemonTypesFromJson(json);
}
