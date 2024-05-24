import 'package:flutter/material.dart';
import 'package:flutter_begin/provider/TodoProvider.dart';
import 'package:flutter_begin/view/FetchButtonWidget.dart';
import 'package:flutter_begin/view/ItemWidget.dart';
import 'package:flutter_begin/view/TodoListWidget.dart';
import 'package:provider/provider.dart';

// main 함수: 앱의 진입점
void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<TodoProvider>(create: (_) => TodoProvider()),
    ],
    child: const MyApp(),
  )); // runApp(app) : 플러터에서 최상위 함수. runApp 함수 안에는 app, 즉 위젯이 들어온다 생각하면 됨.
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // 디버그 표시 없애기
        debugShowCheckedModeBanner: true,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
          // 머테리얼 디자인에서 레이아웃을 잡을 수 있게 해준다.
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_back),
            ),
            title: const Text("안녕1"),
            actions: [
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.send_outlined))
            ],
          ),
          body: const Column(
            children: [ItemWidget(), FetchButtonWidget(), TodoListWidget()],
          ),
          bottomNavigationBar: const BottomBar(),
        ));
  }
}

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const BottomAppBar(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.phone),
          Icon(Icons.message),
          Icon(Icons.contact_page)
        ],
      ),
    );
  }
}
