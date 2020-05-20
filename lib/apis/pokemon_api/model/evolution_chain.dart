import 'package:ffuf_flutter_architecture/ffuf_flutter_architecture.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex_app_flutter/apis/pokemon_api/model/evolution_species.dart';

part 'evolution_chain.freezed.dart';
part 'evolution_chain.g.dart';

@freezed
abstract class Chain with _$Chain {
  factory Chain({
    @required @JsonKey(name: 'evolves_to') List<Chain> evolvesTo,
    @required Species species,
  }) = _Chain;

  factory Chain.fromJson(Map<String, dynamic> json) => _$ChainFromJson(json);
}
