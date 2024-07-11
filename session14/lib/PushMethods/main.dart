import 'package:flutter/material.dart';
import 'package:session14/PushMethods/pages/home.dart';
import 'package:session14/PushMethods/pages/screen1.dart';
import 'package:session14/PushMethods/pages/screen2.dart';
import 'package:session14/PushMethods/pages/screen3.dart';

void main(List<String> args) {
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Home.ROUTE,
      routes: {
        Home.ROUTE: (context) => const Home(),
        Screen1.ROUTE: (context) => const Screen1(),
        Screen2.ROUTE: (context) => const Screen2(),
        Screen3.ROUTE: (context) => const Screen3(),
      },
    );
  }
}
