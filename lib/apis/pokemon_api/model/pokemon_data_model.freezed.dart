// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'pokemon_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PokemonData _$PokemonDataFromJson(Map<String, dynamic> json) {
  return _PokemonData.fromJson(json);
}

class _$PokemonDataTearOff {
  const _$PokemonDataTearOff();

  _PokemonData call(
      {@required PokemonDetails pokemonDetails,
      @required PokemonDescription pokemonDescription,
      @required List<PokemonEvolutionNode> pokemonEvolution}) {
    return _PokemonData(
      pokemonDetails: pokemonDetails,
      pokemonDescription: pokemonDescription,
      pokemonEvolution: pokemonEvolution,
    );
  }
}

// ignore: unused_element
const $PokemonData = _$PokemonDataTearOff();

mixin _$PokemonData {
  PokemonDetails get pokemonDetails;
  PokemonDescription get pokemonDescription;
  List<PokemonEvolutionNode> get pokemonEvolution;

  Map<String, dynamic> toJson();
  $PokemonDataCopyWith<PokemonData> get copyWith;
}

abstract class $PokemonDataCopyWith<$Res> {
  factory $PokemonDataCopyWith(
          PokemonData value, $Res Function(PokemonData) then) =
      _$PokemonDataCopyWithImpl<$Res>;
  $Res call(
      {PokemonDetails pokemonDetails,
      PokemonDescription pokemonDescription,
      List<PokemonEvolutionNode> pokemonEvolution});

  $PokemonDetailsCopyWith<$Res> get pokemonDetails;
  $PokemonDescriptionCopyWith<$Res> get pokemonDescription;
}

class _$PokemonDataCopyWithImpl<$Res> implements $PokemonDataCopyWith<$Res> {
  _$PokemonDataCopyWithImpl(this._value, this._then);

  final PokemonData _value;
  // ignore: unused_field
  final $Res Function(PokemonData) _then;

  @override
  $Res call({
    Object pokemonDetails = freezed,
    Object pokemonDescription = freezed,
    Object pokemonEvolution = freezed,
  }) {
    return _then(_value.copyWith(
      pokemonDetails: pokemonDetails == freezed
          ? _value.pokemonDetails
          : pokemonDetails as PokemonDetails,
      pokemonDescription: pokemonDescription == freezed
          ? _value.pokemonDescription
          : pokemonDescription as PokemonDescription,
      pokemonEvolution: pokemonEvolution == freezed
          ? _value.pokemonEvolution
          : pokemonEvolution as List<PokemonEvolutionNode>,
    ));
  }

  @override
  $PokemonDetailsCopyWith<$Res> get pokemonDetails {
    if (_value.pokemonDetails == null) {
      return null;
    }
    return $PokemonDetailsCopyWith<$Res>(_value.pokemonDetails, (value) {
      return _then(_value.copyWith(pokemonDetails: value));
    });
  }

  @override
  $PokemonDescriptionCopyWith<$Res> get pokemonDescription {
    if (_value.pokemonDescription == null) {
      return null;
    }
    return $PokemonDescriptionCopyWith<$Res>(_value.pokemonDescription,
        (value) {
      return _then(_value.copyWith(pokemonDescription: value));
    });
  }
}

abstract class _$PokemonDataCopyWith<$Res>
    implements $PokemonDataCopyWith<$Res> {
  factory _$PokemonDataCopyWith(
          _PokemonData value, $Res Function(_PokemonData) then) =
      __$PokemonDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {PokemonDetails pokemonDetails,
      PokemonDescription pokemonDescription,
      List<PokemonEvolutionNode> pokemonEvolution});

  @override
  $PokemonDetailsCopyWith<$Res> get pokemonDetails;
  @override
  $PokemonDescriptionCopyWith<$Res> get pokemonDescription;
}

class __$PokemonDataCopyWithImpl<$Res> extends _$PokemonDataCopyWithImpl<$Res>
    implements _$PokemonDataCopyWith<$Res> {
  __$PokemonDataCopyWithImpl(
      _PokemonData _value, $Res Function(_PokemonData) _then)
      : super(_value, (v) => _then(v as _PokemonData));

  @override
  _PokemonData get _value => super._value as _PokemonData;

  @override
  $Res call({
    Object pokemonDetails = freezed,
    Object pokemonDescription = freezed,
    Object pokemonEvolution = freezed,
  }) {
    return _then(_PokemonData(
      pokemonDetails: pokemonDetails == freezed
          ? _value.pokemonDetails
          : pokemonDetails as PokemonDetails,
      pokemonDescription: pokemonDescription == freezed
          ? _value.pokemonDescription
          : pokemonDescription as PokemonDescription,
      pokemonEvolution: pokemonEvolution == freezed
          ? _value.pokemonEvolution
          : pokemonEvolution as List<PokemonEvolutionNode>,
    ));
  }
}

@JsonSerializable()
class _$_PokemonData implements _PokemonData {
  _$_PokemonData(
      {@required this.pokemonDetails,
      @required this.pokemonDescription,
      @required this.pokemonEvolution})
      : assert(pokemonDetails != null),
        assert(pokemonDescription != null),
        assert(pokemonEvolution != null);

  factory _$_PokemonData.fromJson(Map<String, dynamic> json) =>
      _$_$_PokemonDataFromJson(json);

  @override
  final PokemonDetails pokemonDetails;
  @override
  final PokemonDescription pokemonDescription;
  @override
  final List<PokemonEvolutionNode> pokemonEvolution;

  @override
  String toString() {
    return 'PokemonData(pokemonDetails: $pokemonDetails, pokemonDescription: $pokemonDescription, pokemonEvolution: $pokemonEvolution)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PokemonData &&
            (identical(other.pokemonDetails, pokemonDetails) ||
                const DeepCollectionEquality()
                    .equals(other.pokemonDetails, pokemonDetails)) &&
            (identical(other.pokemonDescription, pokemonDescription) ||
                const DeepCollectionEquality()
                    .equals(other.pokemonDescription, pokemonDescription)) &&
            (identical(other.pokemonEvolution, pokemonEvolution) ||
                const DeepCollectionEquality()
                    .equals(other.pokemonEvolution, pokemonEvolution)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(pokemonDetails) ^
      const DeepCollectionEquality().hash(pokemonDescription) ^
      const DeepCollectionEquality().hash(pokemonEvolution);

  @override
  _$PokemonDataCopyWith<_PokemonData> get copyWith =>
      __$PokemonDataCopyWithImpl<_PokemonData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PokemonDataToJson(this);
  }
}

abstract class _PokemonData implements PokemonData {
  factory _PokemonData(
      {@required PokemonDetails pokemonDetails,
      @required PokemonDescription pokemonDescription,
      @required List<PokemonEvolutionNode> pokemonEvolution}) = _$_PokemonData;

  factory _PokemonData.fromJson(Map<String, dynamic> json) =
      _$_PokemonData.fromJson;

  @override
  PokemonDetails get pokemonDetails;
  @override
  PokemonDescription get pokemonDescription;
  @override
  List<PokemonEvolutionNode> get pokemonEvolution;
  @override
  _$PokemonDataCopyWith<_PokemonData> get copyWith;
}
