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
  Icon icon = Icon(Icons.star_border);
  int i = 0;
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
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        icon = Icon(Icons.star);
                        i++;
                        setState(() {});
                      },
                      icon: icon),
                  const SizedBox(
                    width: 20,
                  ),
                  Text('$i')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
