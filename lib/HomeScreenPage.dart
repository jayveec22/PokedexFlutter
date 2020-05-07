import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Models/Pokemon.dart';
import 'Network/PokemonServices.dart';
import 'PokemonDetailsPage.dart';

final pokemonServices = new PokemonServices();

class HomeScreenPage extends StatefulWidget {
  @override
  _HomeScreenPageState createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  List<Pokemon> initialPokemonList = [];
  List<Pokemon> filteredPokemonList = [];
  bool isSearching = false;

  @override
  void initState() {
    super.initState();
    this.loadCSV();
  }

  @override
  Widget build(Object context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
          print('titi');
        },
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              centerTitle: true,
              title: Text(
                'Pokedex',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              bottom: PreferredSize(
                preferredSize: Size(25.0, 25.0),
                child: Container(
                  height: 35.0,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        top: 2.0,
                        left: 30.0,
                        right: 30.0,
                        child: Container(
                          height: 30.0,
                          decoration: BoxDecoration(
                              color: Colors.white60,
                              borderRadius: BorderRadius.circular(5.0)),
                          child: TextField(
                            textAlign: TextAlign.center,
                            textAlignVertical: TextAlignVertical.center,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search Pokemon...',
                            ),
                            onChanged: (text) {
                              this.setSearchBarStatus(text);
                            },
                            onSubmitted: (text) {
                              this.setSearchBarStatus(text);
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  child: Stack(
                    children: <Widget>[
                      Positioned.fill(
                        child: Image.asset(
                          'assets/images/pokemonBackground.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return InkWell(
                    onTap: () => this.showPokemonDetailsPage(isSearching
                        ? filteredPokemonList[index]
                        : initialPokemonList[index]),
                    child: PokemonTile(isSearching
                        ? filteredPokemonList[index]
                        : initialPokemonList[index]),
                  );
                },
                childCount: isSearching
                    ? filteredPokemonList.length
                    : initialPokemonList.length,
              ),
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 140.0,
                mainAxisSpacing: 1.0,
                crossAxisSpacing: 1.0,
                childAspectRatio: 1.0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void setSearchBarStatus(String text) {
    setState(() {
      isSearching = text.isNotEmpty;
      if (text.isNotEmpty) {
        filteredPokemonList = initialPokemonList
            .where((u) => (u.name.toLowerCase().contains(text.toLowerCase())))
            .toList();
      }
    });
  }

  static Future<String> _loadAsset(String path) async {
    return await rootBundle.loadString(path);
  }

  void showPokemonDetailsPage(Pokemon pokemon) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return PokemonDetailsPage(pokemonServices.fetchPokemonData(pokemon.id));
    }));
  }

  Future<void> loadCSV() async {
    _loadAsset('assets/pokemon.csv').then((dynamic output) {
      List<Pokemon> pokemons = <Pokemon>[];

      LineSplitter.split(output)
          .forEach((line) => pokemons.add(Pokemon.fromCSV(line.split(','))));

      pokemons.removeAt(0);

      setState(() {
        initialPokemonList = pokemons;
      });
    });
  }
}

class PokemonTile extends StatelessWidget {
  final Pokemon pokemon;

  PokemonTile(this.pokemon);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Image.asset(
                'assets/images/pokemons/${this.pokemon.id}.png',
                fit: BoxFit.scaleDown,
              ),
            ),
            Container(
              color: Colors.teal,
              child: Text(
                pokemon.name,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 13.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    color: Colors.black,
                    child: Text(
                      '${double.parse(this.pokemon.height) / 10} cm',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 1,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.white,
                    child: Text(
                      '${double.parse(this.pokemon.weight) / 10} kg',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 1,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
