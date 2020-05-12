// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_statistics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Statistics _$_$_StatisticsFromJson(Map<String, dynamic> json) {
  return _$_Statistics(
    baseStat: json['base_stat'] as int,
    stat: json['stat'] == null
        ? null
        : Statistic.fromJson(json['stat'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_StatisticsToJson(_$_Statistics instance) =>
    <String, dynamic>{
      'base_stat': instance.baseStat,
      'stat': instance.stat,
    };
