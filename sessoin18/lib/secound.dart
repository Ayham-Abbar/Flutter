import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Scound extends StatefulWidget {
  const Scound({super.key});

  @override
  State<Scound> createState() => _ScoundState();
}

class _ScoundState extends State<Scound> {
  var value;
  getPref() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    value = preferences.getString('Id');
    setState(() {
      
    });
    print(value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Secound'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            child:const Text('Get'),
            onPressed: () async{
              await getPref();
            },
          ),
          const SizedBox(height: 25,),
           Text('Value :${value}'),
        ],
      ),
    );
  }
}
