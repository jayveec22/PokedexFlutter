
import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:pokedex_app_flutter/models/pokemon_data_model.dart';
import 'package:pokedex_app_flutter/models/pokemon_description_model.dart';
import 'package:pokedex_app_flutter/models/pokemon_details_model.dart';
import 'package:pokedex_app_flutter/models/pokemon_evolution_model.dart';
import 'package:pokedex_app_flutter/models/pokemon_evolution_node.dart';
import 'package:pokedex_app_flutter/models/pokemon_model.dart';

class PokemonServices {
  Future<PokemonData> fetchPokemonData(int id) async {
    PokemonData pokemonData = PokemonData();
    pokemonData.pokemonDetails = await this.fetchPokemonDetails(id);
    pokemonData.pokemonDescription = await this.fetchPokemonDescription(id);
    pokemonData.pokemonEvolutions = await this.fetchPokemonEvolution(
        pokemonData.pokemonDescription.evolutionChain.url);

    return pokemonData;
  }

  Future<PokemonDetails> fetchPokemonDetails(int id) async {
    final Response response =
        await http.get('https://pokeapi.co/api/v2/pokemon/$id/');

    if (response.statusCode == 200) {
      return PokemonDetails.fromJson(json.decode(response.body));
    } else {
      throw Exception(
          'Failed to load Pokemon Details. Request Status Code ${response.statusCode}');
    }
  }

  Future<PokemonDescription> fetchPokemonDescription(int id) async {
    final Response response =
        await http.get('https://pokeapi.co/api/v2/pokemon-species/$id/');

    if (response.statusCode == 200) {
      return PokemonDescription.fromJson(json.decode(response.body));
    } else {
      throw Exception(
          'Failed to load Pokemon Description. Request Status Code ${response.statusCode}');
    }
  }

  Future<List<PokemonEvolutionNode>> fetchPokemonEvolution(String url) async {
    final Response response = await http.get(url);

    if (response.statusCode == 200) {
      PokemonEvolution evolution =
          PokemonEvolution.fromJson(json.decode(response.body));
      List<PokemonEvolutionNode> evolutionNode = List<PokemonEvolutionNode>();

      return this.parseEvolutions(
        evolution.chain,
        evolutionNode,
      );
    } else {
      throw Exception(
          'Failed to load Pokemon Evolution. Request Status Code ${response.statusCode}');
    }
  }

  List<PokemonEvolutionNode> parseEvolutions(
    Chain chain, List<PokemonEvolutionNode> evolutions) {
    String name = chain.species.name;
    String id = Uri.parse(chain.species.url)
        .pathSegments
        .lastWhere((element) => element.isNotEmpty);

    evolutions.add(PokemonEvolutionNode(name, id));

    if (chain.evolvesTo != null && chain.evolvesTo.isNotEmpty) {
      List<EvolvesTo> evolvesTo = chain.evolvesTo;
      String name = evolvesTo.first.species.name;
      String id = Uri.parse(evolvesTo.first.species.url)
          .pathSegments
          .lastWhere((element) => element.isNotEmpty);

      evolutions.add(PokemonEvolutionNode(name, id));

      if (evolvesTo.first.evolvesTo != null &&
          evolvesTo.first.evolvesTo.isNotEmpty) {
        this.parseEvolutions(evolvesTo.first.evolvesTo.first, evolutions);
      }
    }
    return evolutions;
  }

  static Future<String> _loadAsset(String path) async {
    return await rootBundle.loadString(path);
  }

  Future<List<Pokemon>> loadCSV() async {
    List<Pokemon> pokemons = [];
    await _loadAsset('assets/pokemon.csv').then((dynamic output) {
      LineSplitter.split(output)
          .forEach((line) => pokemons.add(Pokemon.fromCSV(line.split(','))));

      pokemons.removeAt(0);
    });

    return pokemons;
  }
}
