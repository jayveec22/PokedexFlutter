// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'pokemon_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PokemonDetails _$PokemonDetailsFromJson(Map<String, dynamic> json) {
  return _PokemonDetails.fromJson(json);
}

class _$PokemonDetailsTearOff {
  const _$PokemonDetailsTearOff();

  _PokemonDetails call(
      {@required String name,
      @required int id,
      @required int weight,
      @required int height,
      @required List<Statistics> stats,
      @required List<PokemonTypes> types}) {
    return _PokemonDetails(
      name: name,
      id: id,
      weight: weight,
      height: height,
      stats: stats,
      types: types,
    );
  }
}

// ignore: unused_element
const $PokemonDetails = _$PokemonDetailsTearOff();

mixin _$PokemonDetails {
  String get name;
  int get id;
  int get weight;
  int get height;
  List<Statistics> get stats;
  List<PokemonTypes> get types;

  Map<String, dynamic> toJson();
  $PokemonDetailsCopyWith<PokemonDetails> get copyWith;
}

abstract class $PokemonDetailsCopyWith<$Res> {
  factory $PokemonDetailsCopyWith(
          PokemonDetails value, $Res Function(PokemonDetails) then) =
      _$PokemonDetailsCopyWithImpl<$Res>;
  $Res call(
      {String name,
      int id,
      int weight,
      int height,
      List<Statistics> stats,
      List<PokemonTypes> types});
}

class _$PokemonDetailsCopyWithImpl<$Res>
    implements $PokemonDetailsCopyWith<$Res> {
  _$PokemonDetailsCopyWithImpl(this._value, this._then);

  final PokemonDetails _value;
  // ignore: unused_field
  final $Res Function(PokemonDetails) _then;

  @override
  $Res call({
    Object name = freezed,
    Object id = freezed,
    Object weight = freezed,
    Object height = freezed,
    Object stats = freezed,
    Object types = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      id: id == freezed ? _value.id : id as int,
      weight: weight == freezed ? _value.weight : weight as int,
      height: height == freezed ? _value.height : height as int,
      stats: stats == freezed ? _value.stats : stats as List<Statistics>,
      types: types == freezed ? _value.types : types as List<PokemonTypes>,
    ));
  }
}

abstract class _$PokemonDetailsCopyWith<$Res>
    implements $PokemonDetailsCopyWith<$Res> {
  factory _$PokemonDetailsCopyWith(
          _PokemonDetails value, $Res Function(_PokemonDetails) then) =
      __$PokemonDetailsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      int id,
      int weight,
      int height,
      List<Statistics> stats,
      List<PokemonTypes> types});
}

class __$PokemonDetailsCopyWithImpl<$Res>
    extends _$PokemonDetailsCopyWithImpl<$Res>
    implements _$PokemonDetailsCopyWith<$Res> {
  __$PokemonDetailsCopyWithImpl(
      _PokemonDetails _value, $Res Function(_PokemonDetails) _then)
      : super(_value, (v) => _then(v as _PokemonDetails));

  @override
  _PokemonDetails get _value => super._value as _PokemonDetails;

  @override
  $Res call({
    Object name = freezed,
    Object id = freezed,
    Object weight = freezed,
    Object height = freezed,
    Object stats = freezed,
    Object types = freezed,
  }) {
    return _then(_PokemonDetails(
      name: name == freezed ? _value.name : name as String,
      id: id == freezed ? _value.id : id as int,
      weight: weight == freezed ? _value.weight : weight as int,
      height: height == freezed ? _value.height : height as int,
      stats: stats == freezed ? _value.stats : stats as List<Statistics>,
      types: types == freezed ? _value.types : types as List<PokemonTypes>,
    ));
  }
}

@JsonSerializable()
class _$_PokemonDetails implements _PokemonDetails {
  _$_PokemonDetails(
      {@required this.name,
      @required this.id,
      @required this.weight,
      @required this.height,
      @required this.stats,
      @required this.types})
      : assert(name != null),
        assert(id != null),
        assert(weight != null),
        assert(height != null),
        assert(stats != null),
        assert(types != null);

  factory _$_PokemonDetails.fromJson(Map<String, dynamic> json) =>
      _$_$_PokemonDetailsFromJson(json);

  @override
  final String name;
  @override
  final int id;
  @override
  final int weight;
  @override
  final int height;
  @override
  final List<Statistics> stats;
  @override
  final List<PokemonTypes> types;

  @override
  String toString() {
    return 'PokemonDetails(name: $name, id: $id, weight: $weight, height: $height, stats: $stats, types: $types)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PokemonDetails &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.weight, weight) ||
                const DeepCollectionEquality().equals(other.weight, weight)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.stats, stats) ||
                const DeepCollectionEquality().equals(other.stats, stats)) &&
            (identical(other.types, types) ||
                const DeepCollectionEquality().equals(other.types, types)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(weight) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(stats) ^
      const DeepCollectionEquality().hash(types);

  @override
  _$PokemonDetailsCopyWith<_PokemonDetails> get copyWith =>
      __$PokemonDetailsCopyWithImpl<_PokemonDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PokemonDetailsToJson(this);
  }
}

abstract class _PokemonDetails implements PokemonDetails {
  factory _PokemonDetails(
      {@required String name,
      @required int id,
      @required int weight,
      @required int height,
      @required List<Statistics> stats,
      @required List<PokemonTypes> types}) = _$_PokemonDetails;

  factory _PokemonDetails.fromJson(Map<String, dynamic> json) =
      _$_PokemonDetails.fromJson;

  @override
  String get name;
  @override
  int get id;
  @override
  int get weight;
  @override
  int get height;
  @override
  List<Statistics> get stats;
  @override
  List<PokemonTypes> get types;
  @override
  _$PokemonDetailsCopyWith<_PokemonDetails> get copyWith;
}
