import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  static final route = '/';
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body:  Center(
        child: ElevatedButton(
        onPressed: () async {
          var res = await Navigator.pushNamed(context, '/secound');
          if (res != null) {
            ScaffoldMessenger.of(context) .showSnackBar(SnackBar(content: Text('$res')));
          }
        },
        child: const Text('Secound'))),
    );
  }
}

