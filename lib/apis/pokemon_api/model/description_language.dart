import 'package:ffuf_flutter_architecture/ffuf_flutter_architecture.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'description_language.freezed.dart';
part 'description_language.g.dart';

@freezed
abstract class Language with _$Language {
  factory Language({
    @required String name,
  }) = _Language;

  factory Language.fromJson(Map<String, dynamic> json) => _$LanguageFromJson(json);
}