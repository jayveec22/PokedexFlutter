import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_app_flutter/Models/PokemonData.dart';
import 'package:pokedex_app_flutter/Models/PokemonStatistics.dart';

class PokemonDetailsPage extends StatefulWidget {
  final Future<PokemonData> futurePokemonData;

  PokemonDetailsPage(this.futurePokemonData);

  @override
  _PokemonDetailsPageState createState() => _PokemonDetailsPageState();
}

class _PokemonDetailsPageState extends State<PokemonDetailsPage> {
  PokemonData pokemonData;
  Map<int, Widget> detailPages;

  int sharedValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FutureBuilder<PokemonData>(
            future: widget.futurePokemonData,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data.pokemonDetails.name.toUpperCase());
              }

              return Text('');
            }),
      ),
      body: Container(
        color: Colors.white60,
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
                    sharedValue = val;
                  });
                },
                groupValue: sharedValue,
              ),
            ),
            FutureBuilder<PokemonData>(
              future: widget.futurePokemonData,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  this.pokemonData = snapshot.data;
                  if (this.detailPages == null) {
                    this.detailPages = <int, Widget>{
                      0: pokemonOverview(),
                      1: pokemonStatistics(),
                    };
                  }

                  return this.detailPages[sharedValue];
                } else if (snapshot.hasError) {
                  return Text('Pokemon request error: ${snapshot.error}');
                }

                return Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget pokemonOverview() {
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
              padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
              itemCount: this.pokemonData.pokemonEvolutions.length,
              itemBuilder: (context, int) {
                return Container(
                  width: 100.0,
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

  Widget pokemonStatistics() {
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
                'assets/images/pokemons/${pokemonData.pokemonDetails.id}.png',
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
            statisticsProgressBar(PokemonStatistics(
                statistic: StatisticsType.hp,
                pokemonDetails: pokemonData.pokemonDetails)),
            SizedBox(height: 10.0),
            statisticsProgressBar(PokemonStatistics(
                statistic: StatisticsType.attack,
                pokemonDetails: pokemonData.pokemonDetails)),
            SizedBox(height: 10.0),
            statisticsProgressBar(PokemonStatistics(
                statistic: StatisticsType.defense,
                pokemonDetails: pokemonData.pokemonDetails)),
            SizedBox(height: 10.0),
            statisticsProgressBar(PokemonStatistics(
                statistic: StatisticsType.specialAttack,
                pokemonDetails: pokemonData.pokemonDetails)),
            SizedBox(height: 10.0),
            statisticsProgressBar(PokemonStatistics(
                statistic: StatisticsType.specialDefense,
                pokemonDetails: pokemonData.pokemonDetails)),
            SizedBox(height: 10.0),
            statisticsProgressBar(PokemonStatistics(
                statistic: StatisticsType.speed,
                pokemonDetails: pokemonData.pokemonDetails)),
          ],
        ),
      ),
    );
  }

  Widget statisticsProgressBar(PokemonStatistics statistics) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          '${statistics.title()}:',
        ),
        SizedBox(
          height: 20.0,
          width: 250.0,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25.0),
            child: LinearProgressIndicator(
              backgroundColor: Colors.black87,
              valueColor: AlwaysStoppedAnimation<Color>(
                statistics.color(),
              ),
              value: statistics.value(),
            ),
          ),
        ),
      ],
    );
  }
}
