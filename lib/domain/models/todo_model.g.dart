// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ToDoModel _$_$_ToDoModelFromJson(Map<String, dynamic> json) {
  return _$_ToDoModel(
    userId: json['userId'] as int,
    id: json['id'] as int,
    title: json['title'] as String,
    completed: json['completed'] as bool,
  );
}

Map<String, dynamic> _$_$_ToDoModelToJson(_$_ToDoModel instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'id': instance.id,
      'title': instance.title,
      'completed': instance.completed,
    };
