import 'package:ffuf_flutter_architecture/ffuf_flutter_architecture.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_app_flutter/feature/homescreen/home_screen_page.dart';
import 'package:pokedex_app_flutter/state/app_state.dart';
import 'package:pokedex_app_flutter/utilities/app_router.dart';
import 'package:pokedex_app_flutter/utilities/app_starter.dart';

class FlutterPokedex extends StatelessWidget {
  final Store<AppState> store;

  FlutterPokedex({this.store});

  @override
  Widget build(Object context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        title: 'Pokedex',
        theme: ThemeData(
          primaryColor: Colors.lightBlueAccent,
        ),
        home: Stack(
          children: <Widget>[
            UserExceptionWidget<AppState>(
              child: WillPopScope(
                child: Navigator(
                  key: navigatorKey,
                  initialRoute: HomeScreenPage.route,
                  onGenerateRoute: AppRouter.generateRoute,
                ),
                onWillPop: () async =>
                    !await navigatorKey.currentState.maybePop(),
              ),
              requestFlushbar: (key, bContext) => FFuFFlushBar(
                message: key,
                title: key,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
