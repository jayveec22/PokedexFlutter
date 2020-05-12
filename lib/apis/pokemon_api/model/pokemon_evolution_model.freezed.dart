// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'pokemon_evolution_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PokemonEvolution _$PokemonEvolutionFromJson(Map<String, dynamic> json) {
  return _PokemonEvolution.fromJson(json);
}

class _$PokemonEvolutionTearOff {
  const _$PokemonEvolutionTearOff();

  _PokemonEvolution call({@required int id, @required Chain chain}) {
    return _PokemonEvolution(
      id: id,
      chain: chain,
    );
  }
}

// ignore: unused_element
const $PokemonEvolution = _$PokemonEvolutionTearOff();

mixin _$PokemonEvolution {
  int get id;
  Chain get chain;

  Map<String, dynamic> toJson();
  $PokemonEvolutionCopyWith<PokemonEvolution> get copyWith;
}

abstract class $PokemonEvolutionCopyWith<$Res> {
  factory $PokemonEvolutionCopyWith(
          PokemonEvolution value, $Res Function(PokemonEvolution) then) =
      _$PokemonEvolutionCopyWithImpl<$Res>;
  $Res call({int id, Chain chain});

  $ChainCopyWith<$Res> get chain;
}

class _$PokemonEvolutionCopyWithImpl<$Res>
    implements $PokemonEvolutionCopyWith<$Res> {
  _$PokemonEvolutionCopyWithImpl(this._value, this._then);

  final PokemonEvolution _value;
  // ignore: unused_field
  final $Res Function(PokemonEvolution) _then;

  @override
  $Res call({
    Object id = freezed,
    Object chain = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      chain: chain == freezed ? _value.chain : chain as Chain,
    ));
  }

  @override
  $ChainCopyWith<$Res> get chain {
    if (_value.chain == null) {
      return null;
    }
    return $ChainCopyWith<$Res>(_value.chain, (value) {
      return _then(_value.copyWith(chain: value));
    });
  }
}

abstract class _$PokemonEvolutionCopyWith<$Res>
    implements $PokemonEvolutionCopyWith<$Res> {
  factory _$PokemonEvolutionCopyWith(
          _PokemonEvolution value, $Res Function(_PokemonEvolution) then) =
      __$PokemonEvolutionCopyWithImpl<$Res>;
  @override
  $Res call({int id, Chain chain});

  @override
  $ChainCopyWith<$Res> get chain;
}

class __$PokemonEvolutionCopyWithImpl<$Res>
    extends _$PokemonEvolutionCopyWithImpl<$Res>
    implements _$PokemonEvolutionCopyWith<$Res> {
  __$PokemonEvolutionCopyWithImpl(
      _PokemonEvolution _value, $Res Function(_PokemonEvolution) _then)
      : super(_value, (v) => _then(v as _PokemonEvolution));

  @override
  _PokemonEvolution get _value => super._value as _PokemonEvolution;

  @override
  $Res call({
    Object id = freezed,
    Object chain = freezed,
  }) {
    return _then(_PokemonEvolution(
      id: id == freezed ? _value.id : id as int,
      chain: chain == freezed ? _value.chain : chain as Chain,
    ));
  }
}

@JsonSerializable()
class _$_PokemonEvolution implements _PokemonEvolution {
  _$_PokemonEvolution({@required this.id, @required this.chain})
      : assert(id != null),
        assert(chain != null);

  factory _$_PokemonEvolution.fromJson(Map<String, dynamic> json) =>
      _$_$_PokemonEvolutionFromJson(json);

  @override
  final int id;
  @override
  final Chain chain;

  @override
  String toString() {
    return 'PokemonEvolution(id: $id, chain: $chain)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PokemonEvolution &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.chain, chain) ||
                const DeepCollectionEquality().equals(other.chain, chain)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(chain);

  @override
  _$PokemonEvolutionCopyWith<_PokemonEvolution> get copyWith =>
      __$PokemonEvolutionCopyWithImpl<_PokemonEvolution>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PokemonEvolutionToJson(this);
  }
}

abstract class _PokemonEvolution implements PokemonEvolution {
  factory _PokemonEvolution({@required int id, @required Chain chain}) =
      _$_PokemonEvolution;

  factory _PokemonEvolution.fromJson(Map<String, dynamic> json) =
      _$_PokemonEvolution.fromJson;

  @override
  int get id;
  @override
  Chain get chain;
  @override
  _$PokemonEvolutionCopyWith<_PokemonEvolution> get copyWith;
}
