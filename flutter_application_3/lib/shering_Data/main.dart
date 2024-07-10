import 'package:flutter/material.dart';
import 'package:flutter_application_3/shering_Data/HomePage.dart';

main() {
  return runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('hello my app'),
        backgroundColor: Colors.blue,
      ),
      body:  HomePage(),
    ),
  ));
}

