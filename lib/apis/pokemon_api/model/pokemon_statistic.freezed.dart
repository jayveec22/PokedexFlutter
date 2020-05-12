// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'pokemon_statistic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Statistic _$StatisticFromJson(Map<String, dynamic> json) {
  return _Statistic.fromJson(json);
}

class _$StatisticTearOff {
  const _$StatisticTearOff();

  _Statistic call({@required String name}) {
    return _Statistic(
      name: name,
    );
  }
}

// ignore: unused_element
const $Statistic = _$StatisticTearOff();

mixin _$Statistic {
  String get name;

  Map<String, dynamic> toJson();
  $StatisticCopyWith<Statistic> get copyWith;
}

abstract class $StatisticCopyWith<$Res> {
  factory $StatisticCopyWith(Statistic value, $Res Function(Statistic) then) =
      _$StatisticCopyWithImpl<$Res>;
  $Res call({String name});
}

class _$StatisticCopyWithImpl<$Res> implements $StatisticCopyWith<$Res> {
  _$StatisticCopyWithImpl(this._value, this._then);

  final Statistic _value;
  // ignore: unused_field
  final $Res Function(Statistic) _then;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

abstract class _$StatisticCopyWith<$Res> implements $StatisticCopyWith<$Res> {
  factory _$StatisticCopyWith(
          _Statistic value, $Res Function(_Statistic) then) =
      __$StatisticCopyWithImpl<$Res>;
  @override
  $Res call({String name});
}

class __$StatisticCopyWithImpl<$Res> extends _$StatisticCopyWithImpl<$Res>
    implements _$StatisticCopyWith<$Res> {
  __$StatisticCopyWithImpl(_Statistic _value, $Res Function(_Statistic) _then)
      : super(_value, (v) => _then(v as _Statistic));

  @override
  _Statistic get _value => super._value as _Statistic;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_Statistic(
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

@JsonSerializable()
class _$_Statistic implements _Statistic {
  _$_Statistic({@required this.name}) : assert(name != null);

  factory _$_Statistic.fromJson(Map<String, dynamic> json) =>
      _$_$_StatisticFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'Statistic(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Statistic &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @override
  _$StatisticCopyWith<_Statistic> get copyWith =>
      __$StatisticCopyWithImpl<_Statistic>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_StatisticToJson(this);
  }
}

abstract class _Statistic implements Statistic {
  factory _Statistic({@required String name}) = _$_Statistic;

  factory _Statistic.fromJson(Map<String, dynamic> json) =
      _$_Statistic.fromJson;

  @override
  String get name;
  @override
  _$StatisticCopyWith<_Statistic> get copyWith;
}
