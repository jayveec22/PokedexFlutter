// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'description_flavor_texts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlavorTexts _$_$_FlavorTextsFromJson(Map<String, dynamic> json) {
  return _$_FlavorTexts(
    flavorText: json['flavor_text'] as String,
    language: json['language'] == null
        ? null
        : Language.fromJson(json['language'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_FlavorTextsToJson(_$_FlavorTexts instance) =>
    <String, dynamic>{
      'flavor_text': instance.flavorText,
      'language': instance.language,
    };