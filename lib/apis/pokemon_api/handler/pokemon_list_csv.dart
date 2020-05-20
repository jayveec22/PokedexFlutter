import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:pokedex_app_flutter/apis/pokemon_api/model/pokemon_model.dart';

class PokemonListCsv {
  static Future<String> _loadAsset(String path) async {
    return await rootBundle.loadString(path);
  }

  Future<List<Pokemon>> loadCSV() async {
    List<Pokemon> pokemons = [];
    await _loadAsset('assets/pokemon.csv').then((dynamic output) {
      LineSplitter.split(output).forEach(
        (line) => pokemons.add(
          Pokemon.fromCSV(
            line.split(','),
          ),
        ),
      );

      pokemons.removeAt(0);
    });

    return pokemons;
  }
}
