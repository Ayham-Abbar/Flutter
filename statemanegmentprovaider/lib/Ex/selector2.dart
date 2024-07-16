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
                      value.setDouble1(10.0);
                    },
                    child: const Text('Go 1')),
              ),
              const SizedBox(
                height: 30,
              ),
              Consumer<Model>(
                builder: (context, value, child) => ElevatedButton(
                    onPressed: () {
                      value.setDouble2(20.0);
                    },
                    child: const Text('Go 2')),
              ),
              const SizedBox(
                height: 30,
              ),
              Selector<Model, double>(
                selector: (p0, obj) {
                  return obj.number1;
                },
                builder: (context, value, child) {
                  print('One: $value');
                  return Text(
                    'One',
                    style: TextStyle(fontSize: value),
                  );
                },
              ),
              const SizedBox(
                height: 30,
              ),
              Selector<Model, double>(
                selector: (p0, obj) {
                  return obj.number2;
                },
                builder: (context, value, child) {
                  print('Two: $value');
                  return Text(
                    'Two',
                    style: TextStyle(fontSize: value),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Model extends ChangeNotifier {
  double number1 = 22;
  double number2 = 10;
  setDouble1(num) {
    number1 = num;
    notifyListeners();
  }

  setDouble2(num) {
    number2 = num;
    notifyListeners();
  }
}
