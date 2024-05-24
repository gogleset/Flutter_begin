import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_begin/provider/TodoProvider.dart';
import 'package:provider/provider.dart';

class FetchButtonWidget extends StatelessWidget {
  const FetchButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (BuildContext context) => TodoProvider(),
        child: OutlinedButton(
            onPressed: () {
              context.read<TodoProvider>().getAPI();
            },
            child: const Text("GET API")));
  }
}
