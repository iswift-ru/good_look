import 'dart:convert';
import 'package:meta/meta.dart';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiClient {
  final http.Client httpClient = http.Client();

  Future sendRequest({@required String url}) async {
    final response = await this.httpClient.get(url);
    if (response.statusCode != 200) {
      throw Exception('error');
    }
    final resp = response.body;
    final json = jsonDecode(resp);
    return json;
  }
}
