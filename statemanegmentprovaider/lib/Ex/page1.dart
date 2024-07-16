import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  return runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Model(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Provider'),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Consumer<Model>(
                  builder: (context, value, child) => Text('${value.name}')),
              const SizedBox(
                height: 30,
              ),
              Consumer<Model>(
                  builder: (context, value, child) => Text('${value.K}')),
              Consumer<Model>(
                builder: (context, value, child) => ElevatedButton(
                    onPressed: () {
                      value.onChanges();
                    },
                    child: const Text('Changed')),
              ),
              const SizedBox(
                height: 50,
              ),
              Consumer<Model>(
                builder: (context, value, child) => Expanded(
                  child: Container(
                    // width: 300,
                    // height: 300,
                    color: value.color,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Model extends ChangeNotifier {
  String name = 'Ayham';
  String K = 'Abbar';
  Color color = Colors.amber;
  onChanges() {
    name = 'amjad';
    K = 'zzz';
    color = const Color.fromARGB(255, 146, 184, 255);

    notifyListeners();
  }
}
