import 'package:ffuf_flutter_architecture/ffuf_flutter_architecture.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'description_evolution_chain.freezed.dart';
part 'description_evolution_chain.g.dart';

@freezed
abstract class EvolutionChain with _$EvolutionChain {
  factory EvolutionChain({
    @required String url,
  }) = _EvolutionChain;

  factory EvolutionChain.fromJson(Map<String, dynamic> json) => _$EvolutionChainFromJson(json);
}