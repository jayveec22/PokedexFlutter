import 'package:ffuf_flutter_architecture/ffuf_flutter_architecture.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_statistic.freezed.dart';
part 'pokemon_statistic.g.dart';

@freezed
abstract class Statistic with _$Statistic {
  factory Statistic({
    @required String name,
  }) = _Statistic;

  factory Statistic.fromJson(Map<String, dynamic> json) => _$StatisticFromJson(json);
}