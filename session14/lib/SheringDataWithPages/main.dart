import 'package:flutter/material.dart';
import 'package:session14/SheringDataWithPages/pages/home.dart';
import 'package:session14/SheringDataWithPages/pages/page1.dart';
import 'package:session14/SheringDataWithPages/pages/page2.dart';

void main(List<String> args) {
  return runApp(const APP());
}

class APP extends StatelessWidget {
  const APP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Home.route,
      onGenerateRoute: (settings) {
        if (settings.name == Page2.route) {
          final args = settings.arguments as Map<String, dynamic>;
          return MaterialPageRoute(
              builder: (context) => Page2(name: args['name'],age: args['age'],),
            );
        }
      },
      routes: {
        Home.route: (context) => const Home(),
        Page1.route: (context) => const Page1(),
        Page2.route: (context) => const Page2(),
      },
    );
  }
}
