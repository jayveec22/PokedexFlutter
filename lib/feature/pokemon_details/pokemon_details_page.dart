import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:async_redux/async_redux.dart';
import 'package:pokedex_app_flutter/apis/pokemon_api/model/pokemon_data_model.dart';
import 'package:pokedex_app_flutter/feature/pokemon_details/widget/pokemon_overview.dart';
import 'package:pokedex_app_flutter/feature/pokemon_details/widget/pokemon_statistics_view.dart';
import 'package:pokedex_app_flutter/state/action_pokemon_details.dart';
import 'package:pokedex_app_flutter/state/app_state.dart';

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
  static const String route = 'pokemonDetails';
  final int id;

  PokemonDetailsPage({this.id});

  @override
  _PokemonDetailsPageState createState() => _PokemonDetailsPageState();
}

class _PokemonDetailsPageState extends State<PokemonDetailsPage> {
  int pageNumber = 0;

  bool _isPokemonDataAvailable(PokemonData pokemonData) {
    return pokemonData != null && pokemonData.pokemonDetails.id == widget.id;
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, PokemonDetailsVM>(
      model: PokemonDetailsVM(),
      onInit: (store) => store.dispatch(FetchPokemonDataAction(id: widget.id)),
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
                              onValueChanged: (int val) {
                                setState(() {
                                  this.pageNumber = val;
                                });
                              },
                              groupValue: this.pageNumber),
                        ),
                        if (this.pageNumber == 0) ...[
                          PokemonOverviewPage(pokemonData: vm.pokemonData),
                        ] else ...[
                          PokemonStatisticsPage(pokemonData: vm.pokemonData),
                        ],
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

