import 'package:flutter/material.dart';
import 'package:session14/ReturnData/pages/home.dart';
import 'package:session14/ReturnData/pages/secound.dart';


void main(List<String> args) {
  return runApp(const APP());
}

class APP extends StatelessWidget {
  const APP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Home.route,
      routes: {
        Home.route: (context) => const Home(),
        Secound.route: (context) => const Secound(),
      },
    );
  }
}
