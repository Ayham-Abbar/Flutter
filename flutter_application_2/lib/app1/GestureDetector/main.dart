import 'package:flutter/material.dart';

void main(List<String> args) {
  return runApp(const MaterialApp(
    home: Scaffold(
      body: MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return // The GestureDetector wraps the button.
        GestureDetector(
      // When the child is tapped, show a snackbar.
      onTap: () {
        final m = SnackBar( content: Text('on click'));
        ScaffoldMessenger.of(context).showSnackBar(m);
      },
      // The custom button
      child: Container(
        width: 200,
        height: 200,
        color: Colors.amber,
        alignment: Alignment.center,
        child: const Text('data'),
      ),
    );
  }
}
