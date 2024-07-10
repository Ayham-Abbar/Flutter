import 'package:flutter/material.dart';
import 'package:session14/NamedRoute/Home.dart';
import 'package:session14/NamedRoute/secound.dart';


void main(List<String> args) {
  return runApp(const NamedRoute());
}

class NamedRoute extends StatelessWidget {
  const NamedRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      initialRoute: '/secound',
      routes:{
        '/':(context)=>const Home(),
        '/secound':(context)=>Secound()
      }
    );
  }
}
