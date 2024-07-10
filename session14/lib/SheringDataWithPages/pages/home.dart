import 'package:flutter/material.dart';
import 'package:session14/SheringDataWithPages/pages/page1.dart';
import 'package:session14/SheringDataWithPages/pages/page2.dart';
import 'package:session14/SheringDataWithPages/pages/student.dart';

class Home extends StatelessWidget {
  static final route = '/';
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            child: const Text('Page1'),
            onPressed: () => Navigator.pushNamed(context, Page1.route,
                arguments: Student(name: 'ayham abbar', age: 25)),
          ),
          const SizedBox(
            height: 100,
          ),
          ElevatedButton(
            child: const Text('Page2'),
            onPressed: () => Navigator.pushNamed(context, Page2.route,
                arguments: Student(name: 'Ahmad abbar', age: 29)),
          ),
        ],
      ),
    );
  }
}
