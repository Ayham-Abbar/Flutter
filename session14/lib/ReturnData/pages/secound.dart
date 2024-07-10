import 'package:flutter/material.dart';

class Secound extends StatelessWidget {
  static final route = '/secound';

  const Secound({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Secound Page'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop('Yes');
                },
                child: const Text('Yes')),
            const SizedBox(
              height: 100,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop('No');
                },
                child: const Text('No')),
          ],
        ),
      ),
    );
  }
}
