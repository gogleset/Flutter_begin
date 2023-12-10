import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Center(
            child: Container(
          width: 100,
          height: 100,
          color: Colors.blueGrey,
          child: const Row(mainAxisAlignment: MainAxisAlignment.center,children: [Text(
            "hi",
            style: TextStyle(color: Colors.black, ),
          ),SizedBox(width: 10), Icon(Icons.ac_unit)], )
        )));
  }
  
}
