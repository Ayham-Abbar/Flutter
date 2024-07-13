import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(List<String> args) {
  return runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color color = Colors.black;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('SetState 2')),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                  padding: const EdgeInsets.all(40),
                  child: ElevatedButton(
                      onPressed: () {
                        color = Colors.blue;
                        setState(() {});
                      },
                      child: const Text('Show Image'))),
              const SizedBox(
                height: 50,
              ),
              Center(
                  child: Container(
                width: 200,
                height: 200,
                color: color,
              ))
            ],
          ),
        ),
      ),
    );
  }
}
