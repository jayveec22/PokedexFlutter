import 'package:flutter/material.dart';
import 'package:pokedex_app_flutter/feature/homescreen/home_screen_page.dart';
import 'package:pokedex_app_flutter/feature/pokemon_details/pokemon_details_page.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {

      /// MainPage
      case HomeScreenPage.route:
        return MaterialPageRoute(
          builder: (_) => HomeScreenPage(),
        );

      case PokemonDetailsStore.route:
        return MaterialPageRoute(
          builder: (_) => PokemonDetailsStore(
            id: settings.arguments as int,
          ),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('Error: No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
