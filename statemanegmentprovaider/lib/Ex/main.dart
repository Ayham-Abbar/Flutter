import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  return runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Model(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Provider'),
          backgroundColor: Colors.amberAccent,
        ),
        body: Consumer<Model>(
          builder: (context, value, child) => Column(
            children: [
              Text('${value.name}'),
              const SizedBox(
                height: 25,
              ),
              ElevatedButton(
                  onPressed: () {
                    value.onChang();
                  },
                  child: const Text('Do something'))
            ],
          ),
        ),
      ),
    );
  }
}

class Model extends ChangeNotifier {
  String name = 'welcom';
  onChang() {
    name = 'ayham';
    notifyListeners();
  }
}
