import 'package:flutter/cupertino.dart';
import 'package:flutter_begin/model/Todo.dart';

class TodoProvider with ChangeNotifier {
  final _todo = Todo();

  Map<String, dynamic>? get data => _todo.data;

  void getAPI() async {
    await _todo.apiGet();
    print(_todo.data);
    notifyListeners();
  }
}
