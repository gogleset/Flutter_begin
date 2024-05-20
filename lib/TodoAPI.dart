import 'package:flutter/cupertino.dart';
import 'package:flutter_begin/httpRequest.dart';

class Todo {
  Map<String, dynamic>? data;

  Future<Map<String, dynamic>> apiGet() async {
    try {
      final response =
          await httpGet(path: "https://jsonplaceholder.typicode.com/todos/1");
      data = response;
      return response;
    } catch (e) {
      debugPrint("$e");
      return {'statusCode': 490};
    }
  }
}
