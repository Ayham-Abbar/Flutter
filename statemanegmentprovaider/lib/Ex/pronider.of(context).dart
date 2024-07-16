import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  return runApp(MaterialApp(
    home: MyProvider(),
  ));
}

class MyProvider extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyProviderState();
  }
}

class _MyProviderState extends State<MyProvider> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return Model();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Provider.of(context)'),
        ),
        body: HomeOne(),
      ),
    );
  }
}

class HomeOne extends StatelessWidget {
  const HomeOne({super.key});

  @override
  Widget build(BuildContext context) {
    var model = Provider.of<Model>(context, listen: false);
    print(model.i);
    print(model.name);
    return Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        Text('${context.watch<Model>().i}'),
        const SizedBox(
          height: 50,
        ),
        Text('${context.watch<Model>().name}'),
        const SizedBox(
          height: 50,
        ),
        ElevatedButton(
            onPressed: () {
              context.watch<Model>().increment();
            },
            child: const Text('Send'))
      ],
    );
  }
}

class Model extends ChangeNotifier {
  int i = 0;
  String name = 'Ayham';
  increment() {
    i++;
    name = 'abbar';

    notifyListeners();
  }
}
