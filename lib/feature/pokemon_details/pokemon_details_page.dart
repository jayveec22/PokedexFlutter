import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:async_redux/async_redux.dart';
import 'package:pokedex_app_flutter/apis/pokemon_api/model/pokemon_data_model.dart';
import 'package:pokedex_app_flutter/feature/pokemon_details/pokemon_details_page_vm.dart';
import 'package:pokedex_app_flutter/feature/pokemon_details/widget/pokemon_overview.dart';
import 'package:pokedex_app_flutter/feature/pokemon_details/widget/pokemon_statistics_view.dart';
import 'package:pokedex_app_flutter/state/actions/action_pokemon_details.dart';
import 'package:pokedex_app_flutter/state/pokemon_details/pokemon_details_state.dart';

class PokemonDetailsStore extends StatefulWidget {
  static const String route = 'pokemonDetails';
  final int id;

  PokemonDetailsStore({
    Key key,
    this.id,
  }) : super(key: key);

  @override
  _PokemonDetailsStoreState createState() => _PokemonDetailsStoreState();
}

class _PokemonDetailsStoreState extends State<PokemonDetailsStore> {
  Store<PokemonDetailsState> store;

  @override
  void initState() {
    super.initState();

    store = Store<PokemonDetailsState>(
      initialState: PokemonDetailsState(),
      actionObservers: [Log.printer(formatter: Log.verySimpleFormatter)],
    );

    store.dispatch(
      FetchPokemonDataAction(
        id: widget.id,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return StoreProvider<PokemonDetailsState>(
      store: this.store,
      child: PokemonDetailsPage(
        id: widget.id,
      ),
    );
  }
}

class PokemonDetailsPage extends StatefulWidget {
  static const String route = 'pokemonDetails';
  final int id;

  PokemonDetailsPage({this.id});

  @override
  _PokemonDetailsPageState createState() => _PokemonDetailsPageState();
}

class _PokemonDetailsPageState extends State<PokemonDetailsPage> {
  int pageNumber = 0;

  bool _isPokemonDataAvailable(PokemonData pokemonData) =>
      pokemonData != null && pokemonData.pokemonDetails.id == widget.id;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<PokemonDetailsState, PokemonDetailsVM>(
      model: PokemonDetailsVM(),
      builder: (BuildContext context, PokemonDetailsVM vm) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: this._isPokemonDataAvailable(vm.pokemonData)
                ? Text('${vm.pokemonData.pokemonDetails.name.toUpperCase()}')
                : Text(''),
          ),
          body: this._isPokemonDataAvailable(vm.pokemonData)
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
                              onValueChanged: (int val) =>
                                  setState(() => this.pageNumber = val),
                              groupValue: this.pageNumber),
                        ),
                        if (this.pageNumber == 0)
                          PokemonOverviewPage(pokemonData: vm.pokemonData)
                        else
                          PokemonStatisticsPage(pokemonData: vm.pokemonData)
                      ],
                    ),
                  ),
                )
              : Center(
                  child: CircularProgressIndicator(),
                ),
        );
      },
    );
  }
}
