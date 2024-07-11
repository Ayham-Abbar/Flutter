import 'package:flutter/material.dart';
import 'package:session14/SheringDataWithConstructer/pages/home.dart';


void main(List<String> args) {
  return runApp(const APP());
}

class APP extends StatelessWidget {
  const APP({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp
    (
      home: Home(),
    );
  }
}
