import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanegmentprovaider/Project/Pages/home.dart';
import './Pages/Model/cart.dart';

void main(List<String> args) {
  return runApp(FirstApp());
}

class FirstApp extends StatelessWidget {
  const FirstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Cart(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          debugShowMaterialGrid: false,
          title: 'Smart Home',
          home: Home(),
        ));
  }
}
