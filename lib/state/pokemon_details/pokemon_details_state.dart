
import 'package:ffuf_flutter_architecture/ffuf_flutter_architecture.dart';
import 'package:pokedex_app_flutter/apis/pokemon_api/model/pokemon_data_model.dart';

part 'pokemon_details_state.freezed.dart';

@freezed
abstract class PokemonDetailsState with _$PokemonDetailsState {
  factory PokemonDetailsState({
    PokemonData pokemonData,
  }) = _PokemonDetailsState;
}