import 'package:flutter/material.dart';
import 'package:session15/Session14/Pages/login.dart';

class Home extends StatelessWidget {
  static final ROUTE = '/';
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
   var v;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  v = Navigator.of(context)
                      .pushNamed(Login.ROUTE, arguments: 'ayham');
                  v.then((value) {
                    print('value: $value');
                  });
                },
                child: const Text('Go To Login Page')),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
