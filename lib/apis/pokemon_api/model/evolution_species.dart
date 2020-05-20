import 'package:ffuf_flutter_architecture/ffuf_flutter_architecture.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'evolution_species.freezed.dart';
part 'evolution_species.g.dart';

@freezed
abstract class Species with _$Species {
  factory Species({
    @required String name,
    @required String url,
  }) = _Species;

  factory Species.fromJson(Map<String, dynamic> json) =>
      _$SpeciesFromJson(json);
}
