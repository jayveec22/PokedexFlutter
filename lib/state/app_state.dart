import 'package:pokedex_app_flutter/apis/pokemon_api/model/pokemon_data_model.dart';
import 'package:pokedex_app_flutter/apis/pokemon_api/model/pokemon_model.dart';
import 'package:ffuf_flutter_architecture/ffuf_flutter_architecture.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.freezed.dart';
part 'app_state.g.dart';

@freezed
abstract class AppState with _$AppState {
  factory AppState({
    @JsonKey(name: 'initialPokemonList', nullable: true)
        List<Pokemon> initialPokemonList,
    @JsonKey(name: 'pokemonList', nullable: true) List<Pokemon> pokemonList,
    @JsonKey(name: 'pokemonData', nullable: true) PokemonData pokemonData,
  }) = _AppState;

  factory AppState.fromJson(Map<String, dynamic> json) =>
      _$AppStateFromJson(json);
}

class AppStateSerializer extends StateSerializer<AppState> {
  @override
  AppState decode(Map<String, dynamic> data) => AppState.fromJson(data);

  @override
  Map<String, dynamic> encode(state) => state.toJson();
}