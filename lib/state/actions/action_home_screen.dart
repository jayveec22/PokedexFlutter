import 'dart:async';
import 'package:async_redux/async_redux.dart';
import 'package:pokedex_app_flutter/apis/pokemon_api/handler/pokemon_list_csv.dart';
import 'package:pokedex_app_flutter/apis/pokemon_api/model/pokemon_model.dart';
import 'package:pokedex_app_flutter/state/app_state.dart';

class InitializePokemonListAction extends ReduxAction<AppState> {
  @override
  Future<AppState> reduce() async {
    List<Pokemon> value = await PokemonListCsv().loadCSV();

    return state.copyWith(
      initialPokemonList: value,
    );
  }
}

class SetSearchTextAction extends ReduxAction<AppState> {
  final String text;

  SetSearchTextAction({this.text});

  @override
  AppState reduce() {
    return state.copyWith(
      searchText: this.text,
    );
  }
}
