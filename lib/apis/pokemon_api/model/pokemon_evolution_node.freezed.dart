// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'pokemon_evolution_node.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PokemonEvolutionNode _$PokemonEvolutionNodeFromJson(Map<String, dynamic> json) {
  return _PokemonEvolutionNode.fromJson(json);
}

class _$PokemonEvolutionNodeTearOff {
  const _$PokemonEvolutionNodeTearOff();

  _PokemonEvolutionNode call({@required String id, @required String name}) {
    return _PokemonEvolutionNode(
      id: id,
      name: name,
    );
  }
}

// ignore: unused_element
const $PokemonEvolutionNode = _$PokemonEvolutionNodeTearOff();

mixin _$PokemonEvolutionNode {
  String get id;
  String get name;

  Map<String, dynamic> toJson();
  $PokemonEvolutionNodeCopyWith<PokemonEvolutionNode> get copyWith;
}

abstract class $PokemonEvolutionNodeCopyWith<$Res> {
  factory $PokemonEvolutionNodeCopyWith(PokemonEvolutionNode value,
          $Res Function(PokemonEvolutionNode) then) =
      _$PokemonEvolutionNodeCopyWithImpl<$Res>;
  $Res call({String id, String name});
}

class _$PokemonEvolutionNodeCopyWithImpl<$Res>
    implements $PokemonEvolutionNodeCopyWith<$Res> {
  _$PokemonEvolutionNodeCopyWithImpl(this._value, this._then);

  final PokemonEvolutionNode _value;
  // ignore: unused_field
  final $Res Function(PokemonEvolutionNode) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

abstract class _$PokemonEvolutionNodeCopyWith<$Res>
    implements $PokemonEvolutionNodeCopyWith<$Res> {
  factory _$PokemonEvolutionNodeCopyWith(_PokemonEvolutionNode value,
          $Res Function(_PokemonEvolutionNode) then) =
      __$PokemonEvolutionNodeCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name});
}

class __$PokemonEvolutionNodeCopyWithImpl<$Res>
    extends _$PokemonEvolutionNodeCopyWithImpl<$Res>
    implements _$PokemonEvolutionNodeCopyWith<$Res> {
  __$PokemonEvolutionNodeCopyWithImpl(
      _PokemonEvolutionNode _value, $Res Function(_PokemonEvolutionNode) _then)
      : super(_value, (v) => _then(v as _PokemonEvolutionNode));

  @override
  _PokemonEvolutionNode get _value => super._value as _PokemonEvolutionNode;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
  }) {
    return _then(_PokemonEvolutionNode(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

@JsonSerializable()
class _$_PokemonEvolutionNode implements _PokemonEvolutionNode {
  _$_PokemonEvolutionNode({@required this.id, @required this.name})
      : assert(id != null),
        assert(name != null);

  factory _$_PokemonEvolutionNode.fromJson(Map<String, dynamic> json) =>
      _$_$_PokemonEvolutionNodeFromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'PokemonEvolutionNode(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PokemonEvolutionNode &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name);

  @override
  _$PokemonEvolutionNodeCopyWith<_PokemonEvolutionNode> get copyWith =>
      __$PokemonEvolutionNodeCopyWithImpl<_PokemonEvolutionNode>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PokemonEvolutionNodeToJson(this);
  }
}

abstract class _PokemonEvolutionNode implements PokemonEvolutionNode {
  factory _PokemonEvolutionNode({@required String id, @required String name}) =
      _$_PokemonEvolutionNode;

  factory _PokemonEvolutionNode.fromJson(Map<String, dynamic> json) =
      _$_PokemonEvolutionNode.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  _$PokemonEvolutionNodeCopyWith<_PokemonEvolutionNode> get copyWith;
}
