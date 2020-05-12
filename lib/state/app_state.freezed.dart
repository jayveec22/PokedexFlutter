// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
AppState _$AppStateFromJson(Map<String, dynamic> json) {
  return _AppState.fromJson(json);
}

class _$AppStateTearOff {
  const _$AppStateTearOff();

  _AppState call(
      {@JsonKey(name: 'initialPokemonList', nullable: true)
          List<Pokemon> initialPokemonList,
      @JsonKey(name: 'pokemonList', nullable: true)
          List<Pokemon> pokemonList,
      @JsonKey(name: 'pokemonData', nullable: true)
          PokemonData pokemonData}) {
    return _AppState(
      initialPokemonList: initialPokemonList,
      pokemonList: pokemonList,
      pokemonData: pokemonData,
    );
  }
}

// ignore: unused_element
const $AppState = _$AppStateTearOff();

mixin _$AppState {
  @JsonKey(name: 'initialPokemonList', nullable: true)
  List<Pokemon> get initialPokemonList;
  @JsonKey(name: 'pokemonList', nullable: true)
  List<Pokemon> get pokemonList;
  @JsonKey(name: 'pokemonData', nullable: true)
  PokemonData get pokemonData;

  Map<String, dynamic> toJson();
  $AppStateCopyWith<AppState> get copyWith;
}

abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'initialPokemonList', nullable: true)
          List<Pokemon> initialPokemonList,
      @JsonKey(name: 'pokemonList', nullable: true)
          List<Pokemon> pokemonList,
      @JsonKey(name: 'pokemonData', nullable: true)
          PokemonData pokemonData});

  $PokemonDataCopyWith<$Res> get pokemonData;
}

class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;

  @override
  $Res call({
    Object initialPokemonList = freezed,
    Object pokemonList = freezed,
    Object pokemonData = freezed,
  }) {
    return _then(_value.copyWith(
      initialPokemonList: initialPokemonList == freezed
          ? _value.initialPokemonList
          : initialPokemonList as List<Pokemon>,
      pokemonList: pokemonList == freezed
          ? _value.pokemonList
          : pokemonList as List<Pokemon>,
      pokemonData: pokemonData == freezed
          ? _value.pokemonData
          : pokemonData as PokemonData,
    ));
  }

  @override
  $PokemonDataCopyWith<$Res> get pokemonData {
    if (_value.pokemonData == null) {
      return null;
    }
    return $PokemonDataCopyWith<$Res>(_value.pokemonData, (value) {
      return _then(_value.copyWith(pokemonData: value));
    });
  }
}

abstract class _$AppStateCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$AppStateCopyWith(_AppState value, $Res Function(_AppState) then) =
      __$AppStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'initialPokemonList', nullable: true)
          List<Pokemon> initialPokemonList,
      @JsonKey(name: 'pokemonList', nullable: true)
          List<Pokemon> pokemonList,
      @JsonKey(name: 'pokemonData', nullable: true)
          PokemonData pokemonData});

  @override
  $PokemonDataCopyWith<$Res> get pokemonData;
}

class __$AppStateCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$AppStateCopyWith<$Res> {
  __$AppStateCopyWithImpl(_AppState _value, $Res Function(_AppState) _then)
      : super(_value, (v) => _then(v as _AppState));

  @override
  _AppState get _value => super._value as _AppState;

  @override
  $Res call({
    Object initialPokemonList = freezed,
    Object pokemonList = freezed,
    Object pokemonData = freezed,
  }) {
    return _then(_AppState(
      initialPokemonList: initialPokemonList == freezed
          ? _value.initialPokemonList
          : initialPokemonList as List<Pokemon>,
      pokemonList: pokemonList == freezed
          ? _value.pokemonList
          : pokemonList as List<Pokemon>,
      pokemonData: pokemonData == freezed
          ? _value.pokemonData
          : pokemonData as PokemonData,
    ));
  }
}

@JsonSerializable()
class _$_AppState implements _AppState {
  _$_AppState(
      {@JsonKey(name: 'initialPokemonList', nullable: true)
          this.initialPokemonList,
      @JsonKey(name: 'pokemonList', nullable: true)
          this.pokemonList,
      @JsonKey(name: 'pokemonData', nullable: true)
          this.pokemonData});

  factory _$_AppState.fromJson(Map<String, dynamic> json) =>
      _$_$_AppStateFromJson(json);

  @override
  @JsonKey(name: 'initialPokemonList', nullable: true)
  final List<Pokemon> initialPokemonList;
  @override
  @JsonKey(name: 'pokemonList', nullable: true)
  final List<Pokemon> pokemonList;
  @override
  @JsonKey(name: 'pokemonData', nullable: true)
  final PokemonData pokemonData;

  @override
  String toString() {
    return 'AppState(initialPokemonList: $initialPokemonList, pokemonList: $pokemonList, pokemonData: $pokemonData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppState &&
            (identical(other.initialPokemonList, initialPokemonList) ||
                const DeepCollectionEquality()
                    .equals(other.initialPokemonList, initialPokemonList)) &&
            (identical(other.pokemonList, pokemonList) ||
                const DeepCollectionEquality()
                    .equals(other.pokemonList, pokemonList)) &&
            (identical(other.pokemonData, pokemonData) ||
                const DeepCollectionEquality()
                    .equals(other.pokemonData, pokemonData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(initialPokemonList) ^
      const DeepCollectionEquality().hash(pokemonList) ^
      const DeepCollectionEquality().hash(pokemonData);

  @override
  _$AppStateCopyWith<_AppState> get copyWith =>
      __$AppStateCopyWithImpl<_AppState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AppStateToJson(this);
  }
}

abstract class _AppState implements AppState {
  factory _AppState(
      {@JsonKey(name: 'initialPokemonList', nullable: true)
          List<Pokemon> initialPokemonList,
      @JsonKey(name: 'pokemonList', nullable: true)
          List<Pokemon> pokemonList,
      @JsonKey(name: 'pokemonData', nullable: true)
          PokemonData pokemonData}) = _$_AppState;

  factory _AppState.fromJson(Map<String, dynamic> json) = _$_AppState.fromJson;

  @override
  @JsonKey(name: 'initialPokemonList', nullable: true)
  List<Pokemon> get initialPokemonList;
  @override
  @JsonKey(name: 'pokemonList', nullable: true)
  List<Pokemon> get pokemonList;
  @override
  @JsonKey(name: 'pokemonData', nullable: true)
  PokemonData get pokemonData;
  @override
  _$AppStateCopyWith<_AppState> get copyWith;
}
