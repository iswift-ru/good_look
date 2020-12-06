import 'package:good_look/data/models/photo_model.dart';
import 'package:good_look/data/models/todo_model.dart';

abstract class IGoodLookRepository {
  Future<List<PhotoModel>> getPhotoList();
  Future<List<ToDoModel>> getToDoList();
}
