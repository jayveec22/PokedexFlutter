import 'package:flutter/material.dart';
import 'package:pokedex_app_flutter/models/app_state.dart';
import 'package:async_redux/async_redux.dart';
import 'package:pokedex_app_flutter/home_screen_page.dart';

void main() {
  Store<AppState> store;
  var state = AppState.initialState();
  store = Store<AppState>(initialState: state);
  
  runApp(Pokedex(store: store));
}

class Pokedex extends StatelessWidget {
  final Store<AppState> store;

  Pokedex({this.store});

  @override
  Widget build(Object context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        title: 'Pokedex',
        theme: ThemeData(primaryColor: Colors.lightBlueAccent),
        home: HomeScreenPageConnector(),
      ),
    );
  }
}
