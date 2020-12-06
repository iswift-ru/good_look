import 'dart:convert';
import 'dart:core';
import 'package:good_look/data/datasources/api_client.dart';
import 'package:good_look/data/models/photo_model.dart';
import 'package:good_look/data/models/todo_model.dart';
import 'package:good_look/domain/repositories/i_good_look_repository.dart';
import 'package:http/http.dart' as http;

class GoodLookRepository implements IGoodLookRepository {
  @override
  Future<List<PhotoModel>> getPhotoList() async {
    final ApiClient _apiClient = ApiClient();
    final String url = 'https://jsonplaceholder.typicode.com/photos';

    final json = await _apiClient.sendRequest(url: url);

    final List<PhotoModel> photos = (json as List)
        .map((jsonItem) => PhotoModel.fromJson(jsonItem))
        .toList();
    // if (json.statusCode != 200) {
    //   throw Exception('error http.Response');
    // }

    return photos;
  }

  @override
  Future<List<ToDoModel>> getToDoList() async {
    final ApiClient _apiClient = ApiClient();
    final String url = 'https://jsonplaceholder.typicode.com/todos/';

    final json = await _apiClient.sendRequest(url: url);

    final List<ToDoModel> todos =
        (json as List).map((jsonItem) => ToDoModel.fromJson(jsonItem)).toList();
    // if (_apiClient.statusCode != 200) {
    //   throw Exception('error http.Response');
    // }

    return todos;
  }
}
