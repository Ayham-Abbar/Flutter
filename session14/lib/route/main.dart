import 'package:flutter/material.dart';
import 'package:session14/route/Home.dart';

void main(List<String> args) {
  return runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
