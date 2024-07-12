import 'package:flutter/material.dart';

void main(List<String> args) {
  return runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyApp> {
  @override
  void initState()async {
    super.initState();
    print('One');

    await Future.delayed(const Duration(seconds: 3)).then((onValue) {
      print('Two');
    });
    print('Three');
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
