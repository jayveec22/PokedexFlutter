// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'pokemon_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PokemonTypes _$PokemonTypesFromJson(Map<String, dynamic> json) {
  return _PokemonTypes.fromJson(json);
}

class _$PokemonTypesTearOff {
  const _$PokemonTypesTearOff();

  _PokemonTypes call({@required PokemonType type}) {
    return _PokemonTypes(
      type: type,
    );
  }
}

// ignore: unused_element
const $PokemonTypes = _$PokemonTypesTearOff();

mixin _$PokemonTypes {
  PokemonType get type;

  Map<String, dynamic> toJson();
  $PokemonTypesCopyWith<PokemonTypes> get copyWith;
}

abstract class $PokemonTypesCopyWith<$Res> {
  factory $PokemonTypesCopyWith(
          PokemonTypes value, $Res Function(PokemonTypes) then) =
      _$PokemonTypesCopyWithImpl<$Res>;
  $Res call({PokemonType type});

  $PokemonTypeCopyWith<$Res> get type;
}

class _$PokemonTypesCopyWithImpl<$Res> implements $PokemonTypesCopyWith<$Res> {
  _$PokemonTypesCopyWithImpl(this._value, this._then);

  final PokemonTypes _value;
  // ignore: unused_field
  final $Res Function(PokemonTypes) _then;

  @override
  $Res call({
    Object type = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed ? _value.type : type as PokemonType,
    ));
  }

  @override
  $PokemonTypeCopyWith<$Res> get type {
    if (_value.type == null) {
      return null;
    }
    return $PokemonTypeCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value));
    });
  }
}

abstract class _$PokemonTypesCopyWith<$Res>
    implements $PokemonTypesCopyWith<$Res> {
  factory _$PokemonTypesCopyWith(
          _PokemonTypes value, $Res Function(_PokemonTypes) then) =
      __$PokemonTypesCopyWithImpl<$Res>;
  @override
  $Res call({PokemonType type});

  @override
  $PokemonTypeCopyWith<$Res> get type;
}

class __$PokemonTypesCopyWithImpl<$Res> extends _$PokemonTypesCopyWithImpl<$Res>
    implements _$PokemonTypesCopyWith<$Res> {
  __$PokemonTypesCopyWithImpl(
      _PokemonTypes _value, $Res Function(_PokemonTypes) _then)
      : super(_value, (v) => _then(v as _PokemonTypes));

  @override
  _PokemonTypes get _value => super._value as _PokemonTypes;

  @override
  $Res call({
    Object type = freezed,
  }) {
    return _then(_PokemonTypes(
      type: type == freezed ? _value.type : type as PokemonType,
    ));
  }
}

@JsonSerializable()
class _$_PokemonTypes implements _PokemonTypes {
  _$_PokemonTypes({@required this.type}) : assert(type != null);

  factory _$_PokemonTypes.fromJson(Map<String, dynamic> json) =>
      _$_$_PokemonTypesFromJson(json);

  @override
  final PokemonType type;

  @override
  String toString() {
    return 'PokemonTypes(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PokemonTypes &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(type);

  @override
  _$PokemonTypesCopyWith<_PokemonTypes> get copyWith =>
      __$PokemonTypesCopyWithImpl<_PokemonTypes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PokemonTypesToJson(this);
  }
}

abstract class _PokemonTypes implements PokemonTypes {
  factory _PokemonTypes({@required PokemonType type}) = _$_PokemonTypes;

  factory _PokemonTypes.fromJson(Map<String, dynamic> json) =
      _$_PokemonTypes.fromJson;

  @override
  PokemonType get type;
  @override
  _$PokemonTypesCopyWith<_PokemonTypes> get copyWith;
}
