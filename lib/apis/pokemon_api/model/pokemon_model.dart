import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_model.freezed.dart';
part 'pokemon_model.g.dart';

@freezed
abstract class Pokemon with _$Pokemon {
  factory Pokemon({
    int id,
    String name,
    String height,
    String weight,
  }) = _Pokemon;

  factory Pokemon.fromJson(Map<String, dynamic> json) => _$PokemonFromJson(json);

  factory Pokemon.fromCSV(List<String> items) => Pokemon(
        id: int.tryParse(items[0] ?? 0),
        name: items[1],
        height: items[3],
        weight: items[4],
      );
}
