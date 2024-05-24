import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter_begin/provider/TodoProvider.dart';
import 'package:provider/provider.dart';

class TodoListWidget extends StatelessWidget {
  const TodoListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final todo = context.watch<TodoProvider>().data ?? "no data";
    final jsonTodo = json.encode(todo);
    print(jsonTodo);
    debugPrint("asd");
    return const Text("");
  }
}
