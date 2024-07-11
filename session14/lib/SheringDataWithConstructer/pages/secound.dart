import 'package:flutter/material.dart';

class Secound extends StatelessWidget {
  int? price;
  Secound({super.key, this.price});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Secound'),
      ),
      body:  Center(
        child: Column(
          children: [
            const Text(''),
            const SizedBox(
              height: 200,
            ),
            Text('price:${price}')
          ],
        ),
      ),
    );
  }
}
