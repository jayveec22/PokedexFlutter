import 'package:ffuf_flutter_architecture/ffuf_flutter_architecture.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex_app_flutter/apis/pokemon_api/model/description_language.dart';

part 'description_flavor_texts.freezed.dart';
part 'description_flavor_texts.g.dart';

@freezed
abstract class FlavorTexts with _$FlavorTexts {
  factory FlavorTexts({
    @required @JsonKey(name: 'flavor_text') String flavorText,
    @required Language language,
  }) = _FlavorTexts;

  factory FlavorTexts.fromJson(Map<String, dynamic> json) =>
      _$FlavorTextsFromJson(json);
}
