import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

class ApiClient {
  final http.Client httpClient = http.Client();

  Future sendRequest({@required String url}) async {
    final response = await httpClient.get(url);
    if (response.statusCode != 200) {
      throw Exception('error');
    }
    final resp = response.body;
    final dynamic json = jsonDecode(resp);
    return json;
  }
}
