import 'package:flutter/material.dart';
import 'package:session14/PushMethods/pages/screen2.dart';

class Screen1 extends StatelessWidget {
  static final ROUTE = '/Screen1';
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen1 Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context)=>const  Screen2())),
                child: const Text('Open Screen 2 ')),
            const SizedBox(
              height: 100,
            ),
            ElevatedButton(
                onPressed: () => Navigator.pushReplacementNamed(context,Screen2.ROUTE),
                child: const Text('Open Screen 2')),
          ],
        ),
      ),
    );
  }
}
