import 'package:flutter/material.dart';
import 'package:session14/PushMethods/pages/screen1.dart';

class Home extends StatelessWidget {
  static final ROUTE = '/';
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                 onPressed: () =>
                   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Screen1())),
                child: const Text('Open Screen 1')),
            const SizedBox(
              height: 100,
            ),
            ElevatedButton( 
                onPressed: () =>
                   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Screen1())),
                child: const Text('Open Screen 1')),
          ],
        ),
      ),
    );
  }
}
