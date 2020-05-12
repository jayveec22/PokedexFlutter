// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'description_flavor_texts.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
FlavorTexts _$FlavorTextsFromJson(Map<String, dynamic> json) {
  return _FlavorTexts.fromJson(json);
}

class _$FlavorTextsTearOff {
  const _$FlavorTextsTearOff();

  _FlavorTexts call(
      {@required @JsonKey(name: 'flavor_text') String flavorText,
      @required Language language}) {
    return _FlavorTexts(
      flavorText: flavorText,
      language: language,
    );
  }
}

// ignore: unused_element
const $FlavorTexts = _$FlavorTextsTearOff();

mixin _$FlavorTexts {
  @JsonKey(name: 'flavor_text')
  String get flavorText;
  Language get language;

  Map<String, dynamic> toJson();
  $FlavorTextsCopyWith<FlavorTexts> get copyWith;
}

abstract class $FlavorTextsCopyWith<$Res> {
  factory $FlavorTextsCopyWith(
          FlavorTexts value, $Res Function(FlavorTexts) then) =
      _$FlavorTextsCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'flavor_text') String flavorText, Language language});

  $LanguageCopyWith<$Res> get language;
}

class _$FlavorTextsCopyWithImpl<$Res> implements $FlavorTextsCopyWith<$Res> {
  _$FlavorTextsCopyWithImpl(this._value, this._then);

  final FlavorTexts _value;
  // ignore: unused_field
  final $Res Function(FlavorTexts) _then;

  @override
  $Res call({
    Object flavorText = freezed,
    Object language = freezed,
  }) {
    return _then(_value.copyWith(
      flavorText:
          flavorText == freezed ? _value.flavorText : flavorText as String,
      language: language == freezed ? _value.language : language as Language,
    ));
  }

  @override
  $LanguageCopyWith<$Res> get language {
    if (_value.language == null) {
      return null;
    }
    return $LanguageCopyWith<$Res>(_value.language, (value) {
      return _then(_value.copyWith(language: value));
    });
  }
}

abstract class _$FlavorTextsCopyWith<$Res>
    implements $FlavorTextsCopyWith<$Res> {
  factory _$FlavorTextsCopyWith(
          _FlavorTexts value, $Res Function(_FlavorTexts) then) =
      __$FlavorTextsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'flavor_text') String flavorText, Language language});

  @override
  $LanguageCopyWith<$Res> get language;
}

class __$FlavorTextsCopyWithImpl<$Res> extends _$FlavorTextsCopyWithImpl<$Res>
    implements _$FlavorTextsCopyWith<$Res> {
  __$FlavorTextsCopyWithImpl(
      _FlavorTexts _value, $Res Function(_FlavorTexts) _then)
      : super(_value, (v) => _then(v as _FlavorTexts));

  @override
  _FlavorTexts get _value => super._value as _FlavorTexts;

  @override
  $Res call({
    Object flavorText = freezed,
    Object language = freezed,
  }) {
    return _then(_FlavorTexts(
      flavorText:
          flavorText == freezed ? _value.flavorText : flavorText as String,
      language: language == freezed ? _value.language : language as Language,
    ));
  }
}

@JsonSerializable()
class _$_FlavorTexts implements _FlavorTexts {
  _$_FlavorTexts(
      {@required @JsonKey(name: 'flavor_text') this.flavorText,
      @required this.language})
      : assert(flavorText != null),
        assert(language != null);

  factory _$_FlavorTexts.fromJson(Map<String, dynamic> json) =>
      _$_$_FlavorTextsFromJson(json);

  @override
  @JsonKey(name: 'flavor_text')
  final String flavorText;
  @override
  final Language language;

  @override
  String toString() {
    return 'FlavorTexts(flavorText: $flavorText, language: $language)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FlavorTexts &&
            (identical(other.flavorText, flavorText) ||
                const DeepCollectionEquality()
                    .equals(other.flavorText, flavorText)) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(flavorText) ^
      const DeepCollectionEquality().hash(language);

  @override
  _$FlavorTextsCopyWith<_FlavorTexts> get copyWith =>
      __$FlavorTextsCopyWithImpl<_FlavorTexts>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FlavorTextsToJson(this);
  }
}

abstract class _FlavorTexts implements FlavorTexts {
  factory _FlavorTexts(
      {@required @JsonKey(name: 'flavor_text') String flavorText,
      @required Language language}) = _$_FlavorTexts;

  factory _FlavorTexts.fromJson(Map<String, dynamic> json) =
      _$_FlavorTexts.fromJson;

  @override
  @JsonKey(name: 'flavor_text')
  String get flavorText;
  @override
  Language get language;
  @override
  _$FlavorTextsCopyWith<_FlavorTexts> get copyWith;
}
