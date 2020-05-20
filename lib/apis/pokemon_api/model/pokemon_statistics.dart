import 'package:ffuf_flutter_architecture/ffuf_flutter_architecture.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex_app_flutter/apis/pokemon_api/model/pokemon_statistic.dart';

part 'pokemon_statistics.freezed.dart';
part 'pokemon_statistics.g.dart';

@freezed
abstract class Statistics with _$Statistics {
  factory Statistics({
    @required @JsonKey(name: 'base_stat') int baseStat,
    @required Statistic stat,
  }) = _Statistics;

  factory Statistics.fromJson(Map<String, dynamic> json) =>
      _$StatisticsFromJson(json);
}
