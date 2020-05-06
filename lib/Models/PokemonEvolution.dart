class PokemonEvolution {
  final int id;
  final Chain chain;

  PokemonEvolution({this.id, this.chain});

  factory PokemonEvolution.fromJson(Map<String, dynamic> json) {
    return PokemonEvolution(
      id: json['id'],
      chain: Chain.fromJson(json['chain']),
    );
  }
}

class Chain {
  final List<EvolvesTo> evolvesTo;
  final Species species;

  Chain({this.evolvesTo, this.species});

  factory Chain.fromJson(Map<String, dynamic> json) {
    return Chain(
      evolvesTo: parseEvolution(json),
      species: Species.fromJon(json['species']),
    );
  }

  static List<EvolvesTo> parseEvolution(json) {
    var list = json['evolves_to'] as List;
    List<EvolvesTo> evolutions =
        list.map((e) => EvolvesTo.fromJson(e)).toList();
    return evolutions;
  }
}

class EvolvesTo {
  final List<Chain> evolvesTo;
  final Species species;

  EvolvesTo({this.evolvesTo, this.species});

  factory EvolvesTo.fromJson(Map<String, dynamic> json) {
    return EvolvesTo(
        evolvesTo: parseEvolution(json),
        species: Species.fromJon(json['species']));
  }

  static List<Chain> parseEvolution(json) {
    var list = json['evolves_to'] as List;
    List<Chain> evolutions = list.map((e) => Chain.fromJson(e)).toList();
    return evolutions;
  }
}

class Species {
  final String name;
  final String url;

  Species({this.name, this.url});

  factory Species.fromJon(Map<String, dynamic> json) {
    return Species(name: json['name'], url: json['url']);
  }
}
