// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'pokemon_statistics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Statistics _$StatisticsFromJson(Map<String, dynamic> json) {
  return _Statistics.fromJson(json);
}

class _$StatisticsTearOff {
  const _$StatisticsTearOff();

  _Statistics call(
      {@required @JsonKey(name: 'base_stat') int baseStat,
      @required Statistic stat}) {
    return _Statistics(
      baseStat: baseStat,
      stat: stat,
    );
  }
}

// ignore: unused_element
const $Statistics = _$StatisticsTearOff();

mixin _$Statistics {
  @JsonKey(name: 'base_stat')
  int get baseStat;
  Statistic get stat;

  Map<String, dynamic> toJson();
  $StatisticsCopyWith<Statistics> get copyWith;
}

abstract class $StatisticsCopyWith<$Res> {
  factory $StatisticsCopyWith(
          Statistics value, $Res Function(Statistics) then) =
      _$StatisticsCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'base_stat') int baseStat, Statistic stat});

  $StatisticCopyWith<$Res> get stat;
}

class _$StatisticsCopyWithImpl<$Res> implements $StatisticsCopyWith<$Res> {
  _$StatisticsCopyWithImpl(this._value, this._then);

  final Statistics _value;
  // ignore: unused_field
  final $Res Function(Statistics) _then;

  @override
  $Res call({
    Object baseStat = freezed,
    Object stat = freezed,
  }) {
    return _then(_value.copyWith(
      baseStat: baseStat == freezed ? _value.baseStat : baseStat as int,
      stat: stat == freezed ? _value.stat : stat as Statistic,
    ));
  }

  @override
  $StatisticCopyWith<$Res> get stat {
    if (_value.stat == null) {
      return null;
    }
    return $StatisticCopyWith<$Res>(_value.stat, (value) {
      return _then(_value.copyWith(stat: value));
    });
  }
}

abstract class _$StatisticsCopyWith<$Res> implements $StatisticsCopyWith<$Res> {
  factory _$StatisticsCopyWith(
          _Statistics value, $Res Function(_Statistics) then) =
      __$StatisticsCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'base_stat') int baseStat, Statistic stat});

  @override
  $StatisticCopyWith<$Res> get stat;
}

class __$StatisticsCopyWithImpl<$Res> extends _$StatisticsCopyWithImpl<$Res>
    implements _$StatisticsCopyWith<$Res> {
  __$StatisticsCopyWithImpl(
      _Statistics _value, $Res Function(_Statistics) _then)
      : super(_value, (v) => _then(v as _Statistics));

  @override
  _Statistics get _value => super._value as _Statistics;

  @override
  $Res call({
    Object baseStat = freezed,
    Object stat = freezed,
  }) {
    return _then(_Statistics(
      baseStat: baseStat == freezed ? _value.baseStat : baseStat as int,
      stat: stat == freezed ? _value.stat : stat as Statistic,
    ));
  }
}

@JsonSerializable()
class _$_Statistics implements _Statistics {
  _$_Statistics(
      {@required @JsonKey(name: 'base_stat') this.baseStat,
      @required this.stat})
      : assert(baseStat != null),
        assert(stat != null);

  factory _$_Statistics.fromJson(Map<String, dynamic> json) =>
      _$_$_StatisticsFromJson(json);

  @override
  @JsonKey(name: 'base_stat')
  final int baseStat;
  @override
  final Statistic stat;

  @override
  String toString() {
    return 'Statistics(baseStat: $baseStat, stat: $stat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Statistics &&
            (identical(other.baseStat, baseStat) ||
                const DeepCollectionEquality()
                    .equals(other.baseStat, baseStat)) &&
            (identical(other.stat, stat) ||
                const DeepCollectionEquality().equals(other.stat, stat)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(baseStat) ^
      const DeepCollectionEquality().hash(stat);

  @override
  _$StatisticsCopyWith<_Statistics> get copyWith =>
      __$StatisticsCopyWithImpl<_Statistics>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_StatisticsToJson(this);
  }
}

abstract class _Statistics implements Statistics {
  factory _Statistics(
      {@required @JsonKey(name: 'base_stat') int baseStat,
      @required Statistic stat}) = _$_Statistics;

  factory _Statistics.fromJson(Map<String, dynamic> json) =
      _$_Statistics.fromJson;

  @override
  @JsonKey(name: 'base_stat')
  int get baseStat;
  @override
  Statistic get stat;
  @override
  _$StatisticsCopyWith<_Statistics> get copyWith;
}
