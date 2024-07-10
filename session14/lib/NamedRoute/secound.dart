import 'package:flutter/material.dart';

class Secound extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Secound'),
      ),
      body: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: const Text('Back'),
      ),
    );
  }
}
