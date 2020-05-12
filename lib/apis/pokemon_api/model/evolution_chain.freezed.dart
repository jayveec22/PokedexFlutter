// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'evolution_chain.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Chain _$ChainFromJson(Map<String, dynamic> json) {
  return _Chain.fromJson(json);
}

class _$ChainTearOff {
  const _$ChainTearOff();

  _Chain call(
      {@required @JsonKey(name: 'evolves_to') List<Chain> evolvesTo,
      @required Species species}) {
    return _Chain(
      evolvesTo: evolvesTo,
      species: species,
    );
  }
}

// ignore: unused_element
const $Chain = _$ChainTearOff();

mixin _$Chain {
  @JsonKey(name: 'evolves_to')
  List<Chain> get evolvesTo;
  Species get species;

  Map<String, dynamic> toJson();
  $ChainCopyWith<Chain> get copyWith;
}

abstract class $ChainCopyWith<$Res> {
  factory $ChainCopyWith(Chain value, $Res Function(Chain) then) =
      _$ChainCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'evolves_to') List<Chain> evolvesTo, Species species});

  $SpeciesCopyWith<$Res> get species;
}

class _$ChainCopyWithImpl<$Res> implements $ChainCopyWith<$Res> {
  _$ChainCopyWithImpl(this._value, this._then);

  final Chain _value;
  // ignore: unused_field
  final $Res Function(Chain) _then;

  @override
  $Res call({
    Object evolvesTo = freezed,
    Object species = freezed,
  }) {
    return _then(_value.copyWith(
      evolvesTo:
          evolvesTo == freezed ? _value.evolvesTo : evolvesTo as List<Chain>,
      species: species == freezed ? _value.species : species as Species,
    ));
  }

  @override
  $SpeciesCopyWith<$Res> get species {
    if (_value.species == null) {
      return null;
    }
    return $SpeciesCopyWith<$Res>(_value.species, (value) {
      return _then(_value.copyWith(species: value));
    });
  }
}

abstract class _$ChainCopyWith<$Res> implements $ChainCopyWith<$Res> {
  factory _$ChainCopyWith(_Chain value, $Res Function(_Chain) then) =
      __$ChainCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'evolves_to') List<Chain> evolvesTo, Species species});

  @override
  $SpeciesCopyWith<$Res> get species;
}

class __$ChainCopyWithImpl<$Res> extends _$ChainCopyWithImpl<$Res>
    implements _$ChainCopyWith<$Res> {
  __$ChainCopyWithImpl(_Chain _value, $Res Function(_Chain) _then)
      : super(_value, (v) => _then(v as _Chain));

  @override
  _Chain get _value => super._value as _Chain;

  @override
  $Res call({
    Object evolvesTo = freezed,
    Object species = freezed,
  }) {
    return _then(_Chain(
      evolvesTo:
          evolvesTo == freezed ? _value.evolvesTo : evolvesTo as List<Chain>,
      species: species == freezed ? _value.species : species as Species,
    ));
  }
}

@JsonSerializable()
class _$_Chain implements _Chain {
  _$_Chain(
      {@required @JsonKey(name: 'evolves_to') this.evolvesTo,
      @required this.species})
      : assert(evolvesTo != null),
        assert(species != null);

  factory _$_Chain.fromJson(Map<String, dynamic> json) =>
      _$_$_ChainFromJson(json);

  @override
  @JsonKey(name: 'evolves_to')
  final List<Chain> evolvesTo;
  @override
  final Species species;

  @override
  String toString() {
    return 'Chain(evolvesTo: $evolvesTo, species: $species)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Chain &&
            (identical(other.evolvesTo, evolvesTo) ||
                const DeepCollectionEquality()
                    .equals(other.evolvesTo, evolvesTo)) &&
            (identical(other.species, species) ||
                const DeepCollectionEquality().equals(other.species, species)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(evolvesTo) ^
      const DeepCollectionEquality().hash(species);

  @override
  _$ChainCopyWith<_Chain> get copyWith =>
      __$ChainCopyWithImpl<_Chain>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ChainToJson(this);
  }
}

abstract class _Chain implements Chain {
  factory _Chain(
      {@required @JsonKey(name: 'evolves_to') List<Chain> evolvesTo,
      @required Species species}) = _$_Chain;

  factory _Chain.fromJson(Map<String, dynamic> json) = _$_Chain.fromJson;

  @override
  @JsonKey(name: 'evolves_to')
  List<Chain> get evolvesTo;
  @override
  Species get species;
  @override
  _$ChainCopyWith<_Chain> get copyWith;
}
