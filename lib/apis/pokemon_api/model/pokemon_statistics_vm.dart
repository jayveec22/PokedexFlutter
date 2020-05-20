import 'package:flutter/material.dart';
import 'package:pokedex_app_flutter/apis/pokemon_api/model/pokemon_details_model.dart';

enum StatisticsType {
  hp,
  attack,
  defense,
  specialAttack,
  specialDefense,
  speed,
}

class PokemonStatistics {
  final StatisticsType statistic;
  final PokemonDetails pokemonDetails;

  PokemonStatistics({
    this.statistic,
    this.pokemonDetails,
  });

  String title() {
    switch (this.statistic) {
      case StatisticsType.hp:
        return 'HP';

      case StatisticsType.attack:
        return 'ATTACK';

      case StatisticsType.defense:
        return 'DEFENSE';

      case StatisticsType.specialAttack:
        return 'SP ATTACK';

      case StatisticsType.specialDefense:
        return 'SP DEFENSE';

      case StatisticsType.speed:
        return 'SPEED';

      default:
        return 'Invalid Statistics';
    }
  }

  double value() {
    switch (this.statistic) {
      case StatisticsType.hp:
        return this.hpValue();

      case StatisticsType.attack:
        return this.attackValue();

      case StatisticsType.defense:
        return this.defenseValue();

      case StatisticsType.specialAttack:
        return this.specialAttackValue();

      case StatisticsType.specialDefense:
        return this.specialDefenseValue();

      case StatisticsType.speed:
        return this.speedValue();

      default:
        return 0.0;
    }
  }

  Color color() {
    switch (this.statistic) {
      case StatisticsType.hp:
        return Colors.red;

      case StatisticsType.attack:
        return Colors.purple;

      case StatisticsType.defense:
        return Colors.blue;

      case StatisticsType.specialAttack:
        return Colors.yellow;

      case StatisticsType.specialDefense:
        return Colors.greenAccent;

      case StatisticsType.speed:
        return Colors.pinkAccent;

      default:
        return Colors.white;
    }
  }

  double hpValue() {
    double value = this
            .pokemonDetails
            .stats
            .firstWhere((element) => element.stat.name == 'hp')
            .baseStat
            .toDouble() /
        200.0;
    return value;
  }

  double attackValue() {
    double value = this
            .pokemonDetails
            .stats
            .firstWhere((element) => element.stat.name == 'attack')
            .baseStat
            .toDouble() /
        200.0;
    return value;
  }

  double defenseValue() {
    double value = this
            .pokemonDetails
            .stats
            .firstWhere((element) => element.stat.name == 'defense')
            .baseStat
            .toDouble() /
        200.0;
    return value;
  }

  double specialAttackValue() {
    double value = this
            .pokemonDetails
            .stats
            .firstWhere((element) => element.stat.name == 'special-attack')
            .baseStat
            .toDouble() /
        200.0;
    return value;
  }

  double specialDefenseValue() {
    double value = this
            .pokemonDetails
            .stats
            .firstWhere((element) => element.stat.name == 'special-defense')
            .baseStat
            .toDouble() /
        200.0;
    return value;
  }

  double speedValue() {
    double value = this
            .pokemonDetails
            .stats
            .firstWhere((element) => element.stat.name == 'speed')
            .baseStat
            .toDouble() /
        200.0;
    return value;
  }
}
