import 'package:flutter/material.dart';
import 'package:session14/PushMethods/pages/screen3.dart';

class Screen2 extends StatelessWidget {
  static final ROUTE = '/Screen2';
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen2 Page'),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, Screen3.ROUTE),
              child: const Text('Open Screen 3 ')),
          const SizedBox(
            height: 100,
          ),
          ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, Screen3.ROUTE),
              child: const Text('Open Screen 3')),
        ],
      ),
    );
  }
}
