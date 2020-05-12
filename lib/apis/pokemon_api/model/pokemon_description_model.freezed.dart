// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'pokemon_description_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PokemonDescription _$PokemonDescriptionFromJson(Map<String, dynamic> json) {
  return _PokemonDescription.fromJson(json);
}

class _$PokemonDescriptionTearOff {
  const _$PokemonDescriptionTearOff();

  _PokemonDescription call(
      {@required
      @JsonKey(name: 'flavor_text_entries')
          List<FlavorTexts> flavorText,
      @required
      @JsonKey(name: 'evolution_chain')
          EvolutionChain evolutionChain}) {
    return _PokemonDescription(
      flavorText: flavorText,
      evolutionChain: evolutionChain,
    );
  }
}

// ignore: unused_element
const $PokemonDescription = _$PokemonDescriptionTearOff();

mixin _$PokemonDescription {
  @JsonKey(name: 'flavor_text_entries')
  List<FlavorTexts> get flavorText;
  @JsonKey(name: 'evolution_chain')
  EvolutionChain get evolutionChain;

  Map<String, dynamic> toJson();
  $PokemonDescriptionCopyWith<PokemonDescription> get copyWith;
}

abstract class $PokemonDescriptionCopyWith<$Res> {
  factory $PokemonDescriptionCopyWith(
          PokemonDescription value, $Res Function(PokemonDescription) then) =
      _$PokemonDescriptionCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'flavor_text_entries') List<FlavorTexts> flavorText,
      @JsonKey(name: 'evolution_chain') EvolutionChain evolutionChain});

  $EvolutionChainCopyWith<$Res> get evolutionChain;
}

class _$PokemonDescriptionCopyWithImpl<$Res>
    implements $PokemonDescriptionCopyWith<$Res> {
  _$PokemonDescriptionCopyWithImpl(this._value, this._then);

  final PokemonDescription _value;
  // ignore: unused_field
  final $Res Function(PokemonDescription) _then;

  @override
  $Res call({
    Object flavorText = freezed,
    Object evolutionChain = freezed,
  }) {
    return _then(_value.copyWith(
      flavorText: flavorText == freezed
          ? _value.flavorText
          : flavorText as List<FlavorTexts>,
      evolutionChain: evolutionChain == freezed
          ? _value.evolutionChain
          : evolutionChain as EvolutionChain,
    ));
  }

  @override
  $EvolutionChainCopyWith<$Res> get evolutionChain {
    if (_value.evolutionChain == null) {
      return null;
    }
    return $EvolutionChainCopyWith<$Res>(_value.evolutionChain, (value) {
      return _then(_value.copyWith(evolutionChain: value));
    });
  }
}

abstract class _$PokemonDescriptionCopyWith<$Res>
    implements $PokemonDescriptionCopyWith<$Res> {
  factory _$PokemonDescriptionCopyWith(
          _PokemonDescription value, $Res Function(_PokemonDescription) then) =
      __$PokemonDescriptionCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'flavor_text_entries') List<FlavorTexts> flavorText,
      @JsonKey(name: 'evolution_chain') EvolutionChain evolutionChain});

  @override
  $EvolutionChainCopyWith<$Res> get evolutionChain;
}

class __$PokemonDescriptionCopyWithImpl<$Res>
    extends _$PokemonDescriptionCopyWithImpl<$Res>
    implements _$PokemonDescriptionCopyWith<$Res> {
  __$PokemonDescriptionCopyWithImpl(
      _PokemonDescription _value, $Res Function(_PokemonDescription) _then)
      : super(_value, (v) => _then(v as _PokemonDescription));

  @override
  _PokemonDescription get _value => super._value as _PokemonDescription;

  @override
  $Res call({
    Object flavorText = freezed,
    Object evolutionChain = freezed,
  }) {
    return _then(_PokemonDescription(
      flavorText: flavorText == freezed
          ? _value.flavorText
          : flavorText as List<FlavorTexts>,
      evolutionChain: evolutionChain == freezed
          ? _value.evolutionChain
          : evolutionChain as EvolutionChain,
    ));
  }
}

@JsonSerializable()
class _$_PokemonDescription implements _PokemonDescription {
  _$_PokemonDescription(
      {@required @JsonKey(name: 'flavor_text_entries') this.flavorText,
      @required @JsonKey(name: 'evolution_chain') this.evolutionChain})
      : assert(flavorText != null),
        assert(evolutionChain != null);

  factory _$_PokemonDescription.fromJson(Map<String, dynamic> json) =>
      _$_$_PokemonDescriptionFromJson(json);

  @override
  @JsonKey(name: 'flavor_text_entries')
  final List<FlavorTexts> flavorText;
  @override
  @JsonKey(name: 'evolution_chain')
  final EvolutionChain evolutionChain;

  @override
  String toString() {
    return 'PokemonDescription(flavorText: $flavorText, evolutionChain: $evolutionChain)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PokemonDescription &&
            (identical(other.flavorText, flavorText) ||
                const DeepCollectionEquality()
                    .equals(other.flavorText, flavorText)) &&
            (identical(other.evolutionChain, evolutionChain) ||
                const DeepCollectionEquality()
                    .equals(other.evolutionChain, evolutionChain)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(flavorText) ^
      const DeepCollectionEquality().hash(evolutionChain);

  @override
  _$PokemonDescriptionCopyWith<_PokemonDescription> get copyWith =>
      __$PokemonDescriptionCopyWithImpl<_PokemonDescription>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PokemonDescriptionToJson(this);
  }
}

abstract class _PokemonDescription implements PokemonDescription {
  factory _PokemonDescription(
      {@required
      @JsonKey(name: 'flavor_text_entries')
          List<FlavorTexts> flavorText,
      @required
      @JsonKey(name: 'evolution_chain')
          EvolutionChain evolutionChain}) = _$_PokemonDescription;

  factory _PokemonDescription.fromJson(Map<String, dynamic> json) =
      _$_PokemonDescription.fromJson;

  @override
  @JsonKey(name: 'flavor_text_entries')
  List<FlavorTexts> get flavorText;
  @override
  @JsonKey(name: 'evolution_chain')
  EvolutionChain get evolutionChain;
  @override
  _$PokemonDescriptionCopyWith<_PokemonDescription> get copyWith;
}
