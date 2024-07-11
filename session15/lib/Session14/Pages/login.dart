import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  static final ROUTE = '/login';
  final cont = TextEditingController();
  Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Center(
        child: Column(
          children: [
            TextFormField(
              controller: cont,
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(cont.text);
                },
                child: const Text('Back'))
          ],
        ),
      ),
    );
  }
}
