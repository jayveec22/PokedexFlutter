import 'package:flutter/material.dart';
import 'package:pokedex_app_flutter/apis/pokemon_api/model/pokemon_data_model.dart';
import 'package:pokedex_app_flutter/apis/pokemon_api/model/pokemon_statistics_vm.dart';
import 'package:pokedex_app_flutter/feature/pokemon_details/widget/statistics_progress_bar.dart';

class PokemonStatisticsPage extends StatelessWidget {
  final PokemonData pokemonData;

  PokemonStatisticsPage({this.pokemonData});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 16.0,
      ),
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(75.0),
                border: Border.all(),
              ),
              child: Image.asset(
                'assets/images/pokemons/${this.pokemonData.pokemonDetails.id}.png',
                fit: BoxFit.scaleDown,
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Text(
              'STATISTICS',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            StatisticsProgressBar(
              PokemonStatistics(
                statistic: StatisticsType.hp,
                pokemonDetails: this.pokemonData.pokemonDetails,
                brightness: theme.brightness,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            StatisticsProgressBar(
              PokemonStatistics(
                statistic: StatisticsType.attack,
                pokemonDetails: this.pokemonData.pokemonDetails,
                brightness: theme.brightness,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            StatisticsProgressBar(
              PokemonStatistics(
                statistic: StatisticsType.defense,
                pokemonDetails: this.pokemonData.pokemonDetails,
                brightness: theme.brightness,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            StatisticsProgressBar(
              PokemonStatistics(
                statistic: StatisticsType.specialAttack,
                pokemonDetails: this.pokemonData.pokemonDetails,
                brightness: theme.brightness,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            StatisticsProgressBar(
              PokemonStatistics(
                statistic: StatisticsType.specialDefense,
                pokemonDetails: this.pokemonData.pokemonDetails,
                brightness: theme.brightness,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            StatisticsProgressBar(
              PokemonStatistics(
                statistic: StatisticsType.speed,
                pokemonDetails: this.pokemonData.pokemonDetails,
                brightness: theme.brightness,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
