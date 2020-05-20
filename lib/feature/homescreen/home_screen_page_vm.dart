import 'package:ffuf_flutter_architecture/ffuf_flutter_architecture.dart';
import 'package:pokedex_app_flutter/apis/pokemon_api/model/pokemon_model.dart';
import 'package:pokedex_app_flutter/state/actions/action_home_screen.dart';
import 'package:pokedex_app_flutter/state/app_state.dart';

class HomeScreenVM extends BaseModel<AppState> {
  HomeScreenVM();
  List<Pokemon> initialPokemonList;
  List<Pokemon> pokemonList;
  Function(String) onSearch;

  HomeScreenVM.build({
    @required this.initialPokemonList,
    @required this.pokemonList,
    @required this.onSearch,
  }) : super(equals: [initialPokemonList, pokemonList]);

  @override
  BaseModel fromStore() => HomeScreenVM.build(
        initialPokemonList: state.initialPokemonList,
        pokemonList: _getPokemonList(),
        onSearch: (text) => _onSearch(text),
      );

  void _onSearch(String text) => dispatch(
        SetSearchTextAction(
          text: text,
        ),
      );

  List<Pokemon> _getPokemonList() {
    return state.searchText != null && state.searchText.isNotEmpty
        ? state.initialPokemonList
            .where((element) => element.name.contains(state.searchText))
            .toList()
        : state.initialPokemonList;
  }
}
