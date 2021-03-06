import 'dart:core';

import '../../domain/models/photo_model.dart';
import '../../domain/models/todo_model.dart';
import '../../domain/repositories/i_good_look_repository.dart';
import 'api_client.dart';

class GoodLookRepository implements IGoodLookRepository {
  @override
  Future<List<PhotoModel>> getPhotoList() async {
    final _apiClient = ApiClient();
    final url = 'https://jsonplaceholder.typicode.com/photos';

    final dynamic json = await _apiClient.sendRequest(url: url);

    final photos = (json as List)
        .map((dynamic jsonItem) =>
            PhotoModel.fromJson(jsonItem as Map<String, dynamic>))
        .toList();

    return photos;
  }

  @override
  Future<List<ToDoModel>> getToDoList() async {
    final _apiClient = ApiClient();
    final url = 'https://jsonplaceholder.typicode.com/todos/';

    final dynamic json = await _apiClient.sendRequest(url: url);

    final todos = (json as List)
        .map((dynamic jsonItem) =>
            ToDoModel.fromJson(jsonItem as Map<String, dynamic>))
        .toList();

    return todos;
  }
}
