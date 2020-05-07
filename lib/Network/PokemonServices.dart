import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import '../Models/PokemonData.dart';
import '../Models/PokemonDescription.dart';
import '../Models/PokemonDetails.dart';
import '../Models/PokemonEvolution.dart';
import '../Models/PokemonEvolutionNode.dart';

class PokemonServices {
  
    Future<PokemonData> fetchPokemonData(String id) async {
    PokemonData pokemonData = PokemonData();
    pokemonData.pokemonDetails = await this.fetchPokemonDetails(id);
    pokemonData.pokemonDescription =
        await this.fetchPokemonDescription(id);
    pokemonData.pokemonEvolutions = await this.fetchPokemonEvolution(
        pokemonData.pokemonDescription.evolutionChain.url);

    return pokemonData;
  }

  Future<PokemonDetails> fetchPokemonDetails(String id) async {
    final Response response =
        await http.get('https://pokeapi.co/api/v2/pokemon/$id/');

    if (response.statusCode == 200) {
      return PokemonDetails.fromJson(json.decode(response.body));
    } else {
      throw Exception(
          'Failed to load Pokemon Details. Request Status Code ${response.statusCode}');
    }
  }

  Future<PokemonDescription> fetchPokemonDescription(String id) async {
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
}
