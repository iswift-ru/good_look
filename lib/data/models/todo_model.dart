import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_model.freezed.dart';
part 'todo_model.g.dart';

@freezed
abstract class ToDoModel with _$ToDoModel {
  factory ToDoModel({
    int userId,
    int id,
    String title,
    bool completed,
  }) = _ToDoModel;
  factory ToDoModel.fromJson(Map<String, dynamic> json) =>
      _$ToDoModelFromJson(json);
}
