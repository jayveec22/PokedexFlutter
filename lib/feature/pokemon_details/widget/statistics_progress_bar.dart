import 'package:flutter/material.dart';
import 'package:pokedex_app_flutter/apis/pokemon_api/model/pokemon_statistics_vm.dart';

class StatisticsProgressBar extends StatelessWidget {
  final PokemonStatistics statistics;

  StatisticsProgressBar(this.statistics);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          '${this.statistics.title()}:',
        ),
        SizedBox(
          height: 20.0,
          width: size.width * 0.60,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25.0),
            child: LinearProgressIndicator(
              backgroundColor: Colors.black87,
              valueColor: AlwaysStoppedAnimation<Color>(
                this.statistics.color(),
              ),
              value: this.statistics.value(),
            ),
          ),
        ),
      ],
    );
  }
}
