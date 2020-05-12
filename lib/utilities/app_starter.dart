import 'package:ffuf_flutter_architecture/ffuf_flutter_architecture.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_app_flutter/flutter_pokedex.dart';
import 'package:pokedex_app_flutter/state/app_state.dart';

final navigatorKey = GlobalKey<NavigatorState>();

void startApp() async {
  NavigateAction.setNavigatorKey(navigatorKey);

  final persistor = StatePersistor<AppState>(
    StandardEngine(),
    AppStateSerializer(),
  );

  WidgetsFlutterBinding.ensureInitialized();

  AppState initialState;
  try {
    initialState = await persistor.readState();
  } on Exception catch (e) {
    print(e);
  }

  final store = Store<AppState>(
    initialState: initialState ?? AppState(),
    actionObservers: [Log.printer(formatter: Log.verySimpleFormatter)],
    persistor: persistor,
  );

  runApp(FlutterPokedex(store: store));
}
