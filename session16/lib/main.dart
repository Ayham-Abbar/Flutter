import 'dart:collection';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main(List<String> args) {
  runApp(const MaterialApp(
    title: 'مدونتي',
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List data = [];
  bool loding = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HTTP'),
        backgroundColor: Colors.amber,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Center(
              child: ElevatedButton(
                  onPressed: () async {
                    loding = true;
                    setState(() {});
                    var respose = await http.get(Uri.parse(
                        'https://jsonplaceholder.typicode.com/posts'));
                    var r = jsonDecode(respose.body);
                    data.addAll(r);
                    loding = false;
                    setState(() {});
                  },
                  child: const Text('Get Posts')),
            ),
            if(loding) const Center(child: CircularProgressIndicator(),),
            ...List.generate(
                data.length,
                (index) => Card(
                      child: ListTile(
                        title: Text('Title:${data[index]['title']}'),
                        subtitle: Text('Title:${data[index]['body']}'),
                      ),
                    ))
          ],
        ),
      ),
    );
  }
}
