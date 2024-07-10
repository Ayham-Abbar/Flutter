import 'package:flutter/material.dart';
import 'package:flutter_application_3/shering_Data/login.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String data = '';

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            width: 400,
            height: 700,
            decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.black)),
            child: Column(
              children: [
                Text(
                  'data is:$data',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Login(
                  loginWithUserName: true,
                  message: 'Successfully',
                  onChang: (String newData) {
                    setState(() {
                      data = newData;
                    });
                    
                  },
                ),
              ],
            )));
  }
}
