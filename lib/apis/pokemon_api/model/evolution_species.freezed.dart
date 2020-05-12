// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'evolution_species.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Species _$SpeciesFromJson(Map<String, dynamic> json) {
  return _Species.fromJson(json);
}

class _$SpeciesTearOff {
  const _$SpeciesTearOff();

  _Species call({@required String name, @required String url}) {
    return _Species(
      name: name,
      url: url,
    );
  }
}

// ignore: unused_element
const $Species = _$SpeciesTearOff();

mixin _$Species {
  String get name;
  String get url;

  Map<String, dynamic> toJson();
  $SpeciesCopyWith<Species> get copyWith;
}

abstract class $SpeciesCopyWith<$Res> {
  factory $SpeciesCopyWith(Species value, $Res Function(Species) then) =
      _$SpeciesCopyWithImpl<$Res>;
  $Res call({String name, String url});
}

class _$SpeciesCopyWithImpl<$Res> implements $SpeciesCopyWith<$Res> {
  _$SpeciesCopyWithImpl(this._value, this._then);

  final Species _value;
  // ignore: unused_field
  final $Res Function(Species) _then;

  @override
  $Res call({
    Object name = freezed,
    Object url = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      url: url == freezed ? _value.url : url as String,
    ));
  }
}

abstract class _$SpeciesCopyWith<$Res> implements $SpeciesCopyWith<$Res> {
  factory _$SpeciesCopyWith(_Species value, $Res Function(_Species) then) =
      __$SpeciesCopyWithImpl<$Res>;
  @override
  $Res call({String name, String url});
}

class __$SpeciesCopyWithImpl<$Res> extends _$SpeciesCopyWithImpl<$Res>
    implements _$SpeciesCopyWith<$Res> {
  __$SpeciesCopyWithImpl(_Species _value, $Res Function(_Species) _then)
      : super(_value, (v) => _then(v as _Species));

  @override
  _Species get _value => super._value as _Species;

  @override
  $Res call({
    Object name = freezed,
    Object url = freezed,
  }) {
    return _then(_Species(
      name: name == freezed ? _value.name : name as String,
      url: url == freezed ? _value.url : url as String,
    ));
  }
}

@JsonSerializable()
class _$_Species implements _Species {
  _$_Species({@required this.name, @required this.url})
      : assert(name != null),
        assert(url != null);

  factory _$_Species.fromJson(Map<String, dynamic> json) =>
      _$_$_SpeciesFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'Species(name: $name, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Species &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(url);

  @override
  _$SpeciesCopyWith<_Species> get copyWith =>
      __$SpeciesCopyWithImpl<_Species>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SpeciesToJson(this);
  }
}

abstract class _Species implements Species {
  factory _Species({@required String name, @required String url}) = _$_Species;

  factory _Species.fromJson(Map<String, dynamic> json) = _$_Species.fromJson;

  @override
  String get name;
  @override
  String get url;
  @override
  _$SpeciesCopyWith<_Species> get copyWith;
}
