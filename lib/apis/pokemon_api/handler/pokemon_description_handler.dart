part of pokemon_api_spec;

class PokemonDescriptionApi {
  final ApiClient apiClient;

  PokemonDescriptionApi(ApiClient apiClient) : apiClient = apiClient;

  Future<PokemonDescription> fetchPokemonDescription(int id) async {
    final queryParams = <String, dynamic>{};

    return await apiClient.dio
        .get(
      '/pokemon-species/$id/',
      queryParameters: queryParams,
    )
        .then((response) {
      return PokemonDescription.fromJson(response.data);
    });
  }
}
