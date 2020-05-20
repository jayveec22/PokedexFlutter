import 'package:pokedex_app_flutter/apis/api_client.dart';
import 'package:pokedex_app_flutter/apis/pokemon_api/pokemonAPIClient.dart';
import 'package:pokedex_app_flutter/utilities/app_config.dart';

class ApiService {
  static final ApiService _instance = ApiService._internal();

  factory ApiService() => _instance;

  ApiService._internal();

  PokemonDetailsApi get pokemonDetailsApi => _pokemonDetailsApi;

  PokemonDescriptionApi get pokemonDescriptionApi => _pokemonDescriptionApi;

  PokemonEvolutionApi get pokemonEvolutionApi => _pokemonEvolutionApi;

  Future<void> initApis() async {
    final pokemonAPIClient = ApiClient(baseUrl: AppConfig.baseUrl);
    _pokemonDetailsApi = PokemonDetailsApi(pokemonAPIClient);
    _pokemonDescriptionApi = PokemonDescriptionApi(pokemonAPIClient);
  }

  PokemonDetailsApi _pokemonDetailsApi;

  PokemonDescriptionApi _pokemonDescriptionApi;

  PokemonEvolutionApi _pokemonEvolutionApi = PokemonEvolutionApi();
}
