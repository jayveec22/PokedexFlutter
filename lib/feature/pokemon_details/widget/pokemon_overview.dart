import 'package:flutter/material.dart';
import 'package:pokedex_app_flutter/apis/pokemon_api/model/pokemon_data_model.dart';

class PokemonOverviewPage extends StatelessWidget {
  final PokemonData pokemonData;

  PokemonOverviewPage({this.pokemonData});

     String englishDescription() {
    String description = pokemonData.pokemonDescription.flavorText
        .firstWhere((element) => element.language.name == 'en')
        .flavorText;
    return description;
  }

  List<String> typeNames() {
    List<String> names = List<String>();
    this.pokemonData.pokemonDetails.types.forEach((element) {
      names.add(element.type.name);
    });
    return names;
  }

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
            '${this.englishDescription()}',
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
                              itemCount: this.typeNames().length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, int) {
                                return Container(
                                  height: 15.0,
                                  width: 15.0,
                                  child: Image.asset(
                                    'assets/images/pokemonTypes/${this.typeNames()[int]}.png',
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
              itemCount: this.pokemonData.pokemonEvolution.length,
              itemBuilder: (context, int) {
                return Container(
                  width: size.width * 0.25,
                  height: 100.0,
                  child: Image.asset(
                    'assets/images/pokemons/${this.pokemonData.pokemonEvolution[int].id}.png',
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