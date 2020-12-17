import '../models/photo_model.dart';
import '../models/todo_model.dart';

abstract class IGoodLookRepository {
  Future<List<PhotoModel>> getPhotoList();
  Future<List<ToDoModel>> getToDoList();
}
