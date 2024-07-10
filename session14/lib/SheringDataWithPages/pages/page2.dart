import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Page2 extends StatelessWidget {
  static final route = '/Page2';
  final String? name;
  final int? age;
  const Page2({super.key, this.name,this.age});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page2'),
      ),
      body:  Center(
        child:(name!=null ) ?Column(
          children: [Text('Name:${name}'), Text('Age:$age')],
        ):const Text('error')
      ),
    );
  }
}
