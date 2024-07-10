import 'package:flutter/material.dart';
import 'package:session14/SheringDataWithPages/pages/student.dart';

class Page1 extends StatelessWidget {
  static final route = '/Page1';
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    final Student s = ModalRoute.of(context)!.settings.arguments as Student;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page1'),
      ),
      body: Center(
        child: s != null
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Name: ${s.name}'),
                  Text('Age: ${s.age}'),
                ],
              )
            : Text('No student data available'),
      ),
    );
  }
}
