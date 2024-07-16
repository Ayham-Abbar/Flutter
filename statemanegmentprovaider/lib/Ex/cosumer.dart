import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanegmentprovaider/Provider/modelCosumer.dart';

void main(List<String> args) {
  return runApp(MaterialApp(
    home: MyCosumer(),
  ));
}

class MyCosumer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyCosumerState();
  }
}

class _MyCosumerState extends State<MyCosumer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cosumer'),
      ),
      body: ChangeNotifierProvider(
        create: (context) => ModelCosumer(),
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Consumer<ModelCosumer>(builder: (context, value, child) {
                print('User Name: ${value.userName}');

                return Text('User Name: ${value.userName}');
              }),
              const SizedBox(
                height: 50,
              ),
              Consumer<ModelCosumer>(builder: (context, value, child) {
                print('Password: ${value.password}');
                return Text('Password: ${value.password}');
              }),
              const SizedBox(
                height: 50,
              ),
              Consumer<ModelCosumer>(builder: (context, value, child) {
                print('Tmmmmmmmmmmmm');
                return ElevatedButton(
                    onPressed: () {
                      value.change();
                    },
                    child: Text('Go'));
              })
            ],
          ),
        ),
      ),
    );
  }
}
