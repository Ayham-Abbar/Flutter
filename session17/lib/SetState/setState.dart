import 'package:flutter/material.dart';

void main(List<String> args) {
  return runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: const Text('SetState 1')),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      i++;
                    });
                  },
                  icon: const Icon(Icons.add)),
              const SizedBox(
                height: 20,
              ),
              Text('Counter $i'),
              const SizedBox(
                height: 20,
              ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      i--;
                    });
                  },
                  icon: const Icon(Icons.mic)),
            ],
          ),
        ),
      ),
    );
  }
}
