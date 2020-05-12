// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'pokemon_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Pokemon _$PokemonFromJson(Map<String, dynamic> json) {
  return _Pokemon.fromJson(json);
}

class _$PokemonTearOff {
  const _$PokemonTearOff();

  _Pokemon call({int id, String name, String height, String weight}) {
    return _Pokemon(
      id: id,
      name: name,
      height: height,
      weight: weight,
    );
  }
}

// ignore: unused_element
const $Pokemon = _$PokemonTearOff();

mixin _$Pokemon {
  int get id;
  String get name;
  String get height;
  String get weight;

  Map<String, dynamic> toJson();
  $PokemonCopyWith<Pokemon> get copyWith;
}

abstract class $PokemonCopyWith<$Res> {
  factory $PokemonCopyWith(Pokemon value, $Res Function(Pokemon) then) =
      _$PokemonCopyWithImpl<$Res>;
  $Res call({int id, String name, String height, String weight});
}

class _$PokemonCopyWithImpl<$Res> implements $PokemonCopyWith<$Res> {
  _$PokemonCopyWithImpl(this._value, this._then);

  final Pokemon _value;
  // ignore: unused_field
  final $Res Function(Pokemon) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object height = freezed,
    Object weight = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      height: height == freezed ? _value.height : height as String,
      weight: weight == freezed ? _value.weight : weight as String,
    ));
  }
}

abstract class _$PokemonCopyWith<$Res> implements $PokemonCopyWith<$Res> {
  factory _$PokemonCopyWith(_Pokemon value, $Res Function(_Pokemon) then) =
      __$PokemonCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, String height, String weight});
}

class __$PokemonCopyWithImpl<$Res> extends _$PokemonCopyWithImpl<$Res>
    implements _$PokemonCopyWith<$Res> {
  __$PokemonCopyWithImpl(_Pokemon _value, $Res Function(_Pokemon) _then)
      : super(_value, (v) => _then(v as _Pokemon));

  @override
  _Pokemon get _value => super._value as _Pokemon;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object height = freezed,
    Object weight = freezed,
  }) {
    return _then(_Pokemon(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      height: height == freezed ? _value.height : height as String,
      weight: weight == freezed ? _value.weight : weight as String,
    ));
  }
}

@JsonSerializable()
class _$_Pokemon implements _Pokemon {
  _$_Pokemon({this.id, this.name, this.height, this.weight});

  factory _$_Pokemon.fromJson(Map<String, dynamic> json) =>
      _$_$_PokemonFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String height;
  @override
  final String weight;

  @override
  String toString() {
    return 'Pokemon(id: $id, name: $name, height: $height, weight: $weight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Pokemon &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.weight, weight) ||
                const DeepCollectionEquality().equals(other.weight, weight)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(weight);

  @override
  _$PokemonCopyWith<_Pokemon> get copyWith =>
      __$PokemonCopyWithImpl<_Pokemon>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PokemonToJson(this);
  }
}

abstract class _Pokemon implements Pokemon {
  factory _Pokemon({int id, String name, String height, String weight}) =
      _$_Pokemon;

  factory _Pokemon.fromJson(Map<String, dynamic> json) = _$_Pokemon.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get height;
  @override
  String get weight;
  @override
  _$PokemonCopyWith<_Pokemon> get copyWith;
}
