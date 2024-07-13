import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main(List<String> args) {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('HTTP REQUEST'),
          backgroundColor: Colors.blue,
        ),
        body: MyCont(),
      ),
    );
  }
}

class MyCont extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyContState();
}

class _MyContState extends State<MyCont> {
  var data = [];
  Future GetDataPost() async {
    var response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts?id=27'));
    var newRespone = jsonDecode(response.body);
    setState(() {
      data.addAll(newRespone);
    });
  }

  @override
  void initState() {
    super.initState();
    GetDataPost();
  }

  @override
  Widget build(BuildContext context) {
    return data != null || data.isEmpty
        ? ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, i) {
              return
              Card(child: Text(data[i]['title']));
            })
        : const Center(
            child: CircularProgressIndicator(),
          );
  }
}
