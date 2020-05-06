class PokemonDetails {
  final String name;
  final int id;
  final int weight;
  final int height;
  final List<Statistics> statistics;
  final List<Types> types;

  List<String> typeNames() {
    List<String> names = List<String>();
    this.types.forEach((element) {
      names.add(element.type.name);
    });
    return names;
  }

  PokemonDetails(
      {this.name,
      this.id,
      this.weight,
      this.height,
      this.statistics,
      this.types});

  factory PokemonDetails.fromJson(Map<String, dynamic> json) {
    return PokemonDetails(
      name: json['name'],
      id: json['id'],
      weight: json['weight'],
      height: json['height'],
      statistics: parseStatistics(json),
      types: parseTypes(json),
    );
  }

  static List<Statistics> parseStatistics(json) {
    var list = json['stats'] as List;
    List<Statistics> stats = list.map((e) => Statistics.fromJson(e)).toList();
    return stats;
  }

  static List<Types> parseTypes(json) {
    var list = json['types'] as List;
    List<Types> types = list.map((e) => Types.fromJson(e)).toList();
    return types;
  }
}

class Statistics {
  final int baseStats;
  final Statistic statistic;

  Statistics({this.baseStats, this.statistic});

  factory Statistics.fromJson(Map<String, dynamic> json) {
    return Statistics(
      baseStats: json['base_stat'],
      statistic: Statistic.fromJson(
        json['stat'],
      ),
    );
  }
}

class Statistic {
  final String name;

  Statistic({this.name});

  factory Statistic.fromJson(Map<String, dynamic> json) {
    return Statistic(name: json['name']);
  }
}

class Types {
  final Type type;

  Types({this.type});

  factory Types.fromJson(Map<String, dynamic> json) {
    return Types(
      type: Type.fromJson(
        json['type'],
      ),
    );
  }
}

class Type {
  final String name;

  Type({this.name});

  factory Type.fromJson(Map<String, dynamic> json) {
    return Type(
      name: json['name'],
    );
  }
}
