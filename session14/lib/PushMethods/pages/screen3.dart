import 'package:flutter/material.dart';
import 'package:session14/PushMethods/pages/home.dart';

class Screen3 extends StatelessWidget {
  static final ROUTE = '/Screen3';
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen3 Page'),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: ()=>Navigator.of(context).pushNamedAndRemoveUntil(Home.ROUTE,(route)=>false),
              child: const Text('Go To Home ')),
          const SizedBox(
            height: 100,
          ),
          ElevatedButton(
              onPressed: () =>Navigator.of(context).pushNamedAndRemoveUntil('/',ModalRoute.withName('/Screen3')),
              child: const Text('Open Screen 4')),
        ],
      ),
    );
  }
}
