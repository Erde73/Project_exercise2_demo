import 'package:flutter/material.dart';
import 'package:project_ex/first_page.dart';
import 'package:project_ex/home_page.dart';
import 'package:project_ex/next_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/home',  // ここ以降の定義がルーティング定義
      routes: {
        '/home': (context) => HomePage(),
        '/first': (context) => FirstPage(),
        '/next': (context) => NextPage(),
      },
    );
  }
}