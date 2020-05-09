import 'package:flutter/material.dart';
import 'package:async_redux/async_redux.dart';
import 'package:pokedex_app_flutter/models/app_state.dart';
import 'package:pokedex_app_flutter/models/pokemon_model.dart';
import 'package:pokedex_app_flutter/pokemon_details_page.dart';
import 'package:pokedex_app_flutter/state/action_home_screen.dart';

class HomeScreenPageConnector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, HomeScreenVM>(
      model: HomeScreenVM(),
      onInit: (store) => store.dispatch(InitializePokemonListAction()),
      builder: (BuildContext context, HomeScreenVM vm) => HomeScreenPage(
        initialPokemonList: vm.initialPokemonList,
        pokemonList: vm.pokemonList,
        onSearch: vm.onSearch,
      ),
    );
  }
}

class HomeScreenVM extends BaseModel<AppState> {
  HomeScreenVM();
  List<Pokemon> initialPokemonList;
  List<Pokemon> pokemonList;
  Function(String) onSearch;

  HomeScreenVM.build({
    @required this.initialPokemonList,
    @required this.pokemonList,
    @required this.onSearch,
  }) : super(equals: [initialPokemonList, pokemonList]);

  @override
  BaseModel fromStore() => HomeScreenVM.build(
      initialPokemonList: state.initialPokemonList,
      pokemonList: state.pokemonList,
      onSearch: (text) => dispatch(FilterPokemonListAction(text: text)));
}

class HomeScreenPage extends StatelessWidget {
  final List<Pokemon> initialPokemonList;
  final List<Pokemon> pokemonList;
  final Function(String) onSearch;

  HomeScreenPage({
    Key key,
    this.initialPokemonList,
    this.pokemonList,
    this.onSearch,
  }) : super(key: key);

  @override
  Widget build(Object context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
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
                              this.onSearch(text);
                            },
                            onSubmitted: (text) {
                              this.onSearch(text);
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
                    onTap: () => this.showPokemonDetailsPage(
                        this.pokemonList[index], context),
                    child: PokemonTile(this.pokemonList[index]),
                  );
                },
                childCount: this.pokemonList.length,
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

  void showPokemonDetailsPage(Pokemon pokemon, BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return PokemonDetailsPageConnector(id: pokemon.id,);
    }));
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
