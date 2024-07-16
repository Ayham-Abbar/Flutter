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
                builder: (context, value, child) => ElevatedButton(
                    onPressed: () {
                      value.onChanges1();
                    },
                    child: const Text('Go 1')),
              ),
              const SizedBox(
                height: 30,
              ),
              Consumer<Model>(
                builder: (context, value, child) => ElevatedButton(
                    onPressed: () {
                      value.onChanges2();
                    },
                    child: const Text('Go 2')),
              ),
              const SizedBox(
                height: 30,
              ),
              Selector<Model, String>(
                selector: (p0, p1) => p1.pro,
                builder: (context, value, child) {
                  print(value);
                  return Text('$value');
                },
              ),
              const SizedBox(
                height: 30,
              ),
              Selector<Model, int>(
                  selector: (p0, p1) => p1.pro2,
                  builder: (context, value, child) {
                   print(value);
                   return Text('$value');
                  })
            ],
          ),
        ),
      ),
    );
  }
}

class Model extends ChangeNotifier {
  String name = 'Ayham';
  int K = 1;
  get pro => name;
  get pro2 => K;
  onChanges1() {
    name = 'amjad';
    K --;
    notifyListeners();
  }

  onChanges2() {
    K++;
    name = 'Ayham';
    notifyListeners();
  }
}
