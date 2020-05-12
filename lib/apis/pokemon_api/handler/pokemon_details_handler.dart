part of pokemon_api_spec;

class PokemonDetailsApi {
  final ApiClient apiClient;

  PokemonDetailsApi(ApiClient apiClient) : apiClient = apiClient;

  Future<PokemonDetails> fetchPokemonDetails(int id) async {
    final queryParams = <String, dynamic>{};

    return await apiClient.dio
        .get(
      '/pokemon/$id/',
      queryParameters: queryParams,
    )
        .then((response) {
      return PokemonDetails.fromJson(response.data);
    });
  }
}
