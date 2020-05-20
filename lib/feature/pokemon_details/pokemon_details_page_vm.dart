import 'package:ffuf_flutter_architecture/ffuf_flutter_architecture.dart';
import 'package:pokedex_app_flutter/apis/pokemon_api/model/pokemon_data_model.dart';
import 'package:pokedex_app_flutter/state/pokemon_details/pokemon_details_state.dart';

class PokemonDetailsVM extends BaseModel<PokemonDetailsState> {
  PokemonDetailsVM();

  PokemonData pokemonData;

  PokemonDetailsVM.build({@required this.pokemonData})
      : super(equals: [pokemonData]);

  @override
  BaseModel fromStore() => PokemonDetailsVM.build(
        pokemonData: state.pokemonData,
      );
}
