import 'dart:core';

import '../../domain/models/photo_model.dart';
import '../../domain/models/todo_model.dart';
import '../../domain/repositories/i_good_look_repository.dart';
import 'api_client.dart';

class GoodLookMockRepository implements IGoodLookRepository {
  @override
  Future<List<PhotoModel>> getPhotoList() async {
    return List.generate(
        20,
        (int index) => PhotoModel(
            id: index,
            title: 'title $index',
            thumbnailUrl:
                'https://vignette.wikia.nocookie.net/lisenot/images/d/d9/-%D0%BF%D0%BE%D0%BB%D0%BE%D1%81%D0%BA%D1%83%D0%BD.jpg/revision/latest?cb=20150515121119&path-prefix=ru',
            url:
                'https://vignette.wikia.nocookie.net/lisenot/images/d/d9/-%D0%BF%D0%BE%D0%BB%D0%BE%D1%81%D0%BA%D1%83%D0%BD.jpg/revision/latest?cb=20150515121119&path-prefix=ru'));
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
