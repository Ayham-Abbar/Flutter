import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MaterialApp(
    title: 'Flutter Demo',
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List data = [];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('API Page'),
      ),
      body: Center(

        child: ListView(
          children: [ElevatedButton(
            onPressed: () async {
              final respons = await http
                  .get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
              print(respons.body[0]);
              var newRespons = jsonDecode(respons.body) as List<dynamic>;
              data.addAll(newRespons);
              print(data[0]);
              if (respons.statusCode == 200) {
                print('Successfully...');
              } else {
                print('Error...');
              }
            },
            child: const Text('Show Posts'),
          ),
        ]),
      ),
    );
  }
}
