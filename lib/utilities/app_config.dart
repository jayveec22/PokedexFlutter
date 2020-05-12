class AppConfig {
  AppConfig._();

  static _Config _config;

  static void setEnvironment() {
    _config = _Config.setup();
  }

  static String get baseUrl => _config.baseUrl;
}

class _Config {
  _Config._({
    this.baseUrl,
  });

  factory _Config.setup() => _Config._(
        baseUrl: 'https://pokeapi.co/api/v2/',
      );

  final String baseUrl;
}
