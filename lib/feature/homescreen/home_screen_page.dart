import 'package:ffuf_flutter_architecture/ffuf_flutter_architecture.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_app_flutter/feature/homescreen/home_screen_page_vm.dart';
import 'package:pokedex_app_flutter/feature/homescreen/widget/pokemon_tile.dart';
import 'package:pokedex_app_flutter/feature/pokemon_details/pokemon_details_page.dart';
import 'package:pokedex_app_flutter/state/actions/action_home_screen.dart';
import 'package:pokedex_app_flutter/state/app_state.dart';

class HomeScreenPage extends StatelessWidget {
  HomeScreenPage({
    Key key,
  }) : super(key: key);
  static const String route = '/';

  void _navigateToPokemonDetails(BuildContext context, int id) =>
      Navigator.of(context).pushNamed(
        PokemonDetailsStore.route,
        arguments: id,
      );

  @override
  Widget build(Object context) {
    return StoreConnector<AppState, HomeScreenVM>(
      model: HomeScreenVM(),
      onInit: (store) => store.dispatch(InitializePokemonListAction()),
      builder: (BuildContext context, HomeScreenVM vm) {
        return vm.pokemonList == null
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Scaffold(
                body: GestureDetector(
                  onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
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
                          preferredSize: Size(
                            25.0,
                            25.0,
                          ),
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
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    child: TextField(
                                      textAlign: TextAlign.center,
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.all(10.0),
                                        border: InputBorder.none,
                                        hintText: 'Search Pokemon...',
                                      ),
                                      onChanged: (text) => vm.onSearch(text),
                                      onSubmitted: (text) => vm.onSearch(text),
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
                              onTap: () => this._navigateToPokemonDetails(
                                context,
                                vm.pokemonList[index].id,
                              ),
                              child: PokemonTile(vm.pokemonList[index]),
                            );
                          },
                          childCount: vm.pokemonList.length,
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
      },
    );
  }
}
