import 'package:flutter/material.dart';
import 'package:sessoin18/secound.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/s': (context) => Scound(),
      },
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  savePref() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString('Id', '2232');
    print('Successfully');
  }

  deletePref() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.remove('Id');
    print('Remove Successfully....');
  }

  clearPref() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.clear();
    print('clear Successfully....');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Shared Prfrences'),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () async {
                  await savePref();
                },
                child: const Text('Save In Cach')),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/s');
                },
                child: const Text('Go To Scound Page')),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () async {
                  await deletePref();
                },
                child: const Text('Delete In Cach')),
                  const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () async {
                  await clearPref();
                },
                child: const Text('Clear In Cach')),
          ],
        ),
      ),
    );
  }
}
