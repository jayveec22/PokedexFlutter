import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pokedex_app_flutter/Pokemon.dart';
import 'package:pokedex_app_flutter/PokemonTile.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Pokemon> pokemonList = [];
  List<Pokemon> filteredPokemonList = [];
  bool isSearching = false;
  @override
  Widget build(Object context) {
    return Scaffold(
      body: CustomScrollView(
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
              child: searchBar(),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: appBarBackground(),
            ),
          ),
          pokemonGridList(),
        ],
      ),
    );
  }

  Widget searchBar() {
    return Container(
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
                    hintText: 'Search Pokemon',
                  ),
                  onChanged: (text) {
                    setState(() {
                    isSearching = text.isNotEmpty;

                      if (text.isNotEmpty) {
                        filteredPokemonList = pokemonList
                            .where((u) => (u.name
                                .toLowerCase()
                                .contains(text.toLowerCase())))
                            .toList();
                      }
                    });
                  },
                  onSubmitted: (text) {
                    isSearching = text.isNotEmpty;
                    if (text.isNotEmpty) {
                      filteredPokemonList = pokemonList
                            .where((u) => (u.name
                                .toLowerCase()
                                .contains(text.toLowerCase())))
                            .toList();
                    }
                  },
                ),
              ),
            ),
          ],
        ));
  }

  Widget appBarBackground() {
    return Container(
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
    );
  }

  Widget pokemonGridList() {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return PokemonTile(
              isSearching ? filteredPokemonList[index] : pokemonList[index]);
        },
        childCount:
            isSearching ? filteredPokemonList.length : pokemonList.length,
      ),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 140.0,
        mainAxisSpacing: 1.0,
        crossAxisSpacing: 1.0,
        childAspectRatio: 1.0,
      ),
    );
  }

  static Future<String> _loadAsset(String path) async {
    return await rootBundle.loadString(path);
  }

  Future<void> loadCSV() async {
    _loadAsset('assets/pokemon.csv').then((dynamic output) {
      List<Pokemon> pokemons = <Pokemon>[];

      LineSplitter.split(output)
          .forEach((line) => pokemons.add(Pokemon.fromCSV(line.split(','))));

      pokemons.removeAt(0);

      setState(() {
        pokemonList = pokemons;
      });
    });
  }

  @override
  void initState() {
    loadCSV();
    super.initState();
  }
}
