class PokemonDescription {
  final List<FlavorTexts> flavorTexts;
  final EvolutionChain evolutionChain;

  String englishDescription() {
    String description = flavorTexts
        .firstWhere((element) => element.language.name == 'en')
        .flavorText;
    return description;
  }

  PokemonDescription({
    this.flavorTexts,
    this.evolutionChain,
  });

  factory PokemonDescription.fromJson(Map<String, dynamic> json) {
    List<FlavorTexts> flavorText = parseFlavorTexts(json);
    return PokemonDescription(
      flavorTexts: flavorText,
      evolutionChain: EvolutionChain.fromJson(json['evolution_chain']),
    );
  }

  static List<FlavorTexts> parseFlavorTexts(json) {
    var list = json['flavor_text_entries'] as List;
    List<FlavorTexts> flavors =
        list.map((e) => FlavorTexts.fromJson(e)).toList();
    return flavors;
  }
}

class FlavorTexts {
  final String flavorText;
  final Language language;

  FlavorTexts({
    this.flavorText,
    this.language,
  });

  factory FlavorTexts.fromJson(Map<String, dynamic> json) {
    return FlavorTexts(
      flavorText: json['flavor_text'],
      language: Language.fromJson(json['language']),
    );
  }
}

class Language {
  final String name;

  Language({this.name});

  factory Language.fromJson(Map<String, dynamic> json) {
    return Language(name: json['name']);
  }
}

class EvolutionChain {
  final String url;

  EvolutionChain({this.url});

  factory EvolutionChain.fromJson(Map<String, dynamic> json) {
    return EvolutionChain(url: json['url']);
  }
}
