import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_begin/TodoAPI.dart';
import 'package:flutter_begin/httpRequest.dart';

class FetchButtonWidget extends StatefulWidget {
  const FetchButtonWidget({super.key});

  @override
  State<FetchButtonWidget> createState() => _FetchButtonWidgetState();
}

class _FetchButtonWidgetState extends State<FetchButtonWidget> {
  final todo = Todo();

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: () async {
          await todo.apiGet();
          print(todo.data);
        },
        child: const Text("GET API"));
  }
}
