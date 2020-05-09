import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:async_redux/async_redux.dart';
import 'package:pokedex_app_flutter/models/app_state.dart';
import 'package:pokedex_app_flutter/models/pokemon_data_model.dart';
import 'package:pokedex_app_flutter/models/pokemon_statistics.dart';
import 'package:pokedex_app_flutter/state/action_pokemon_details.dart';

class PokemonDetailsPageConnector extends StatelessWidget {
  final int id;

  PokemonDetailsPageConnector({this.id});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, PokemonDetailsVM>(
      model: PokemonDetailsVM(),
      onInit: (store) => store.dispatch(FetchPokemonDataAction(id: this.id)),
      builder: (BuildContext context, PokemonDetailsVM vm) =>
          PokemonDetailsPage(
        pokemonData: vm.pokemonData,
        id: this.id,
      ),
    );
  }
}

class PokemonDetailsVM extends BaseModel<AppState> {
  PokemonDetailsVM();

  PokemonData pokemonData;

  PokemonDetailsVM.build({@required this.pokemonData})
      : super(equals: [pokemonData]);

  @override
  BaseModel fromStore() =>
      PokemonDetailsVM.build(pokemonData: state.pokemonData);
}

class PokemonDetailsPage extends StatefulWidget {
  final PokemonData pokemonData;
  final int id;

  PokemonDetailsPage({this.pokemonData, this.id});

  @override
  _PokemonDetailsPageState createState() => _PokemonDetailsPageState();
}

class _PokemonDetailsPageState extends State<PokemonDetailsPage> {
  int pageNumber = 0;

  bool isPokemonDataAvailable() {
    return widget.pokemonData.pokemonDetails != null &&
        widget.pokemonData.pokemonDetails.id == widget.id;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: this.isPokemonDataAvailable()
            ? Text('${widget.pokemonData.pokemonDetails.name.toUpperCase()}')
            : Text(''),
      ),
      body: this.isPokemonDataAvailable()
          ? SingleChildScrollView(
              child: Container(
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                    ),
                    SizedBox(
                      width: 300.0,
                      child: CupertinoSegmentedControl<int>(
                          selectedColor: Colors.black87,
                          borderColor: Colors.black87,
                          children: {
                            0: Text('Details'),
                            1: Text('Statistics'),
                          },
                          onValueChanged: (int val) {
                            setState(() {
                              this.pageNumber = val;
                            });
                          },
                          groupValue: this.pageNumber),
                    ),
                    if (this.pageNumber == 0) ...[
                      PokemonOverviewPage(pokemonData: widget.pokemonData),
                    ] else ...[
                      PokemonStatisticsPage(pokemonData: widget.pokemonData),
                    ],
                  ],
                ),
              ),
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}

class PokemonOverviewPage extends StatelessWidget {
  final PokemonData pokemonData;

  PokemonOverviewPage({this.pokemonData});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 16.0,
      ),
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.0),
              border: Border.all(),
            ),
            child: Image.asset(
              'assets/images/pokemons/${this.pokemonData.pokemonDetails.id}.png',
              fit: BoxFit.scaleDown,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            '${this.pokemonData.pokemonDescription.englishDescription()}',
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IntrinsicWidth(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      'Height: ${this.pokemonData.pokemonDetails.height / 10} cm',
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      'Weight: ${this.pokemonData.pokemonDetails.weight / 10} kg',
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ),
              IntrinsicWidth(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      'ID: ${this.pokemonData.pokemonDetails.id}',
                      textAlign: TextAlign.start,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          'Type:',
                          textAlign: TextAlign.start,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Container(
                          height: 25.0,
                          width: 40.0,
                          child: ListView.builder(
                              itemCount: this
                                  .pokemonData
                                  .pokemonDetails
                                  .typeNames()
                                  .length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, int) {
                                return Container(
                                  height: 15.0,
                                  width: 15.0,
                                  child: Image.asset(
                                    'assets/images/pokemonTypes/${this.pokemonData.pokemonDetails.typeNames()[int]}.png',
                                    fit: BoxFit.scaleDown,
                                  ),
                                );
                              }),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 25.0,
          ),
          Text(
            'EVOLUTION',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            height: 100.0,
            child: ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(
                horizontal: 5.0,
                vertical: 5.0,
              ),
              itemCount: this.pokemonData.pokemonEvolutions.length,
              itemBuilder: (context, int) {
                return Container(
                  width: size.width * 0.25,
                  height: 100.0,
                  child: Image.asset(
                    'assets/images/pokemons/${this.pokemonData.pokemonEvolutions[int].id}.png',
                    fit: BoxFit.scaleDown,
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: 25,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class PokemonStatisticsPage extends StatelessWidget {
  final PokemonData pokemonData;

  PokemonStatisticsPage({this.pokemonData});

  @override
  Widget build(BuildContext context) {
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
              ),
            ),
            SizedBox(height: 10.0),
            StatisticsProgressBar(
              PokemonStatistics(
                statistic: StatisticsType.attack,
                pokemonDetails: this.pokemonData.pokemonDetails,
              ),
            ),
            SizedBox(height: 10.0),
            StatisticsProgressBar(
              PokemonStatistics(
                statistic: StatisticsType.defense,
                pokemonDetails: this.pokemonData.pokemonDetails,
              ),
            ),
            SizedBox(height: 10.0),
            StatisticsProgressBar(
              PokemonStatistics(
                statistic: StatisticsType.specialAttack,
                pokemonDetails: this.pokemonData.pokemonDetails,
              ),
            ),
            SizedBox(height: 10.0),
            StatisticsProgressBar(
              PokemonStatistics(
                statistic: StatisticsType.specialDefense,
                pokemonDetails: this.pokemonData.pokemonDetails,
              ),
            ),
            SizedBox(height: 10.0),
            StatisticsProgressBar(
              PokemonStatistics(
                statistic: StatisticsType.speed,
                pokemonDetails: this.pokemonData.pokemonDetails,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
