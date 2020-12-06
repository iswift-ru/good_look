// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'todo_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ToDoModel _$ToDoModelFromJson(Map<String, dynamic> json) {
  return _ToDoModel.fromJson(json);
}

/// @nodoc
class _$ToDoModelTearOff {
  const _$ToDoModelTearOff();

// ignore: unused_element
  _ToDoModel call({int userId, int id, String title, bool completed}) {
    return _ToDoModel(
      userId: userId,
      id: id,
      title: title,
      completed: completed,
    );
  }

// ignore: unused_element
  ToDoModel fromJson(Map<String, Object> json) {
    return ToDoModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ToDoModel = _$ToDoModelTearOff();

/// @nodoc
mixin _$ToDoModel {
  int get userId;
  int get id;
  String get title;
  bool get completed;

  Map<String, dynamic> toJson();
  $ToDoModelCopyWith<ToDoModel> get copyWith;
}

/// @nodoc
abstract class $ToDoModelCopyWith<$Res> {
  factory $ToDoModelCopyWith(ToDoModel value, $Res Function(ToDoModel) then) =
      _$ToDoModelCopyWithImpl<$Res>;
  $Res call({int userId, int id, String title, bool completed});
}

/// @nodoc
class _$ToDoModelCopyWithImpl<$Res> implements $ToDoModelCopyWith<$Res> {
  _$ToDoModelCopyWithImpl(this._value, this._then);

  final ToDoModel _value;
  // ignore: unused_field
  final $Res Function(ToDoModel) _then;

  @override
  $Res call({
    Object userId = freezed,
    Object id = freezed,
    Object title = freezed,
    Object completed = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed ? _value.userId : userId as int,
      id: id == freezed ? _value.id : id as int,
      title: title == freezed ? _value.title : title as String,
      completed: completed == freezed ? _value.completed : completed as bool,
    ));
  }
}

/// @nodoc
abstract class _$ToDoModelCopyWith<$Res> implements $ToDoModelCopyWith<$Res> {
  factory _$ToDoModelCopyWith(
          _ToDoModel value, $Res Function(_ToDoModel) then) =
      __$ToDoModelCopyWithImpl<$Res>;
  @override
  $Res call({int userId, int id, String title, bool completed});
}

/// @nodoc
class __$ToDoModelCopyWithImpl<$Res> extends _$ToDoModelCopyWithImpl<$Res>
    implements _$ToDoModelCopyWith<$Res> {
  __$ToDoModelCopyWithImpl(_ToDoModel _value, $Res Function(_ToDoModel) _then)
      : super(_value, (v) => _then(v as _ToDoModel));

  @override
  _ToDoModel get _value => super._value as _ToDoModel;

  @override
  $Res call({
    Object userId = freezed,
    Object id = freezed,
    Object title = freezed,
    Object completed = freezed,
  }) {
    return _then(_ToDoModel(
      userId: userId == freezed ? _value.userId : userId as int,
      id: id == freezed ? _value.id : id as int,
      title: title == freezed ? _value.title : title as String,
      completed: completed == freezed ? _value.completed : completed as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ToDoModel implements _ToDoModel {
  _$_ToDoModel({this.userId, this.id, this.title, this.completed});

  factory _$_ToDoModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ToDoModelFromJson(json);

  @override
  final int userId;
  @override
  final int id;
  @override
  final String title;
  @override
  final bool completed;

  @override
  String toString() {
    return 'ToDoModel(userId: $userId, id: $id, title: $title, completed: $completed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ToDoModel &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.completed, completed) ||
                const DeepCollectionEquality()
                    .equals(other.completed, completed)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(completed);

  @override
  _$ToDoModelCopyWith<_ToDoModel> get copyWith =>
      __$ToDoModelCopyWithImpl<_ToDoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ToDoModelToJson(this);
  }
}

abstract class _ToDoModel implements ToDoModel {
  factory _ToDoModel({int userId, int id, String title, bool completed}) =
      _$_ToDoModel;

  factory _ToDoModel.fromJson(Map<String, dynamic> json) =
      _$_ToDoModel.fromJson;

  @override
  int get userId;
  @override
  int get id;
  @override
  String get title;
  @override
  bool get completed;
  @override
  _$ToDoModelCopyWith<_ToDoModel> get copyWith;
}
