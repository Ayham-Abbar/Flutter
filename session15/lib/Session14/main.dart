import 'package:flutter/material.dart';
import 'package:session15/Session14/Pages/Home.dart';
import 'package:session15/Session14/Pages/login.dart';


void main(List<String> args) {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
       initialRoute: Home.ROUTE,
       routes: {
        Home.ROUTE:(context)=>const Home(),
        Login.ROUTE:(context)=> Login()
       },
    );
  }
}
