part of pokemon_api_spec;

class PokemonEvolutionApi {
  Future<List<PokemonEvolutionNode>> fetchPokemonEvolution(String url) async {
    final Response response = await http.get(url);

    if (response.statusCode == 200) {
      PokemonEvolution evolution =
          PokemonEvolution.fromJson(json.decode(response.body));
      List<PokemonEvolutionNode> evolutionNode = List<PokemonEvolutionNode>();

      return this.parseEvolutions(evolution.chain, evolutionNode);
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

    evolutions.add(
      PokemonEvolutionNode(
        id: id,
        name: name,
      ),
    );

    if (chain.evolvesTo != null && chain.evolvesTo.isNotEmpty) {
      this.parseEvolutions(
        chain.evolvesTo.first,
        evolutions,
      );
    }

    return evolutions;
  }
}
