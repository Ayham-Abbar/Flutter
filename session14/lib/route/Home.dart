import 'package:flutter/material.dart';
import 'package:session14/route/Login.dart';
import 'package:session14/route/scound.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Home Page'),
            const SizedBox(height: 50),
            ElevatedButton(
              child: const Text('Login'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Login()));
              },
            ),
             const SizedBox(height: 50),
            ElevatedButton(
              child: const Text('Secound'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Scound()));
              },
            )
          ],
        ),
      ),
    );
  }
}
