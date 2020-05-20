import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ffuf_flutter_architecture/ffuf_flutter_architecture.dart';

part 'pokemon_evolution_node.freezed.dart';
part 'pokemon_evolution_node.g.dart';

@freezed
abstract class PokemonEvolutionNode with _$PokemonEvolutionNode {
  factory PokemonEvolutionNode({
    @required String id,
    @required String name,
  }) = _PokemonEvolutionNode;

  factory PokemonEvolutionNode.fromJson(Map<String, dynamic> json) =>
      _$PokemonEvolutionNodeFromJson(json);
}
