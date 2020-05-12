// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'description_evolution_chain.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
EvolutionChain _$EvolutionChainFromJson(Map<String, dynamic> json) {
  return _EvolutionChain.fromJson(json);
}

class _$EvolutionChainTearOff {
  const _$EvolutionChainTearOff();

  _EvolutionChain call({@required String url}) {
    return _EvolutionChain(
      url: url,
    );
  }
}

// ignore: unused_element
const $EvolutionChain = _$EvolutionChainTearOff();

mixin _$EvolutionChain {
  String get url;

  Map<String, dynamic> toJson();
  $EvolutionChainCopyWith<EvolutionChain> get copyWith;
}

abstract class $EvolutionChainCopyWith<$Res> {
  factory $EvolutionChainCopyWith(
          EvolutionChain value, $Res Function(EvolutionChain) then) =
      _$EvolutionChainCopyWithImpl<$Res>;
  $Res call({String url});
}

class _$EvolutionChainCopyWithImpl<$Res>
    implements $EvolutionChainCopyWith<$Res> {
  _$EvolutionChainCopyWithImpl(this._value, this._then);

  final EvolutionChain _value;
  // ignore: unused_field
  final $Res Function(EvolutionChain) _then;

  @override
  $Res call({
    Object url = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed ? _value.url : url as String,
    ));
  }
}

abstract class _$EvolutionChainCopyWith<$Res>
    implements $EvolutionChainCopyWith<$Res> {
  factory _$EvolutionChainCopyWith(
          _EvolutionChain value, $Res Function(_EvolutionChain) then) =
      __$EvolutionChainCopyWithImpl<$Res>;
  @override
  $Res call({String url});
}

class __$EvolutionChainCopyWithImpl<$Res>
    extends _$EvolutionChainCopyWithImpl<$Res>
    implements _$EvolutionChainCopyWith<$Res> {
  __$EvolutionChainCopyWithImpl(
      _EvolutionChain _value, $Res Function(_EvolutionChain) _then)
      : super(_value, (v) => _then(v as _EvolutionChain));

  @override
  _EvolutionChain get _value => super._value as _EvolutionChain;

  @override
  $Res call({
    Object url = freezed,
  }) {
    return _then(_EvolutionChain(
      url: url == freezed ? _value.url : url as String,
    ));
  }
}

@JsonSerializable()
class _$_EvolutionChain implements _EvolutionChain {
  _$_EvolutionChain({@required this.url}) : assert(url != null);

  factory _$_EvolutionChain.fromJson(Map<String, dynamic> json) =>
      _$_$_EvolutionChainFromJson(json);

  @override
  final String url;

  @override
  String toString() {
    return 'EvolutionChain(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EvolutionChain &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(url);

  @override
  _$EvolutionChainCopyWith<_EvolutionChain> get copyWith =>
      __$EvolutionChainCopyWithImpl<_EvolutionChain>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_EvolutionChainToJson(this);
  }
}

abstract class _EvolutionChain implements EvolutionChain {
  factory _EvolutionChain({@required String url}) = _$_EvolutionChain;

  factory _EvolutionChain.fromJson(Map<String, dynamic> json) =
      _$_EvolutionChain.fromJson;

  @override
  String get url;
  @override
  _$EvolutionChainCopyWith<_EvolutionChain> get copyWith;
}
