import 'package:flutter/material.dart';

class Scound extends StatelessWidget {
  const Scound({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text('secound'),),
      body:Center(
        child: Column(
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.amber,
              child:const Text('secound') ,
            ),
             const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              child: const Text('Back'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ) ,
    );
  }
}
