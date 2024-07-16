import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanegmentprovaider/Project/Pages/Model/cart.dart';

class CheckOut extends StatefulWidget {
  const CheckOut({super.key});

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('CheckOut'),
          backgroundColor: Color.fromARGB(255, 66, 165, 168),
        ),
        body: ListCheckOut());
  }
}

class ListCheckOut extends StatelessWidget {
  const ListCheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    var model = Provider.of<Cart>(context);
    return ListView.builder(
        itemCount: model.bascketItems.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text('${model.bascketItems[index].name}'),
              trailing: IconButton(
                icon: Icon(Icons.remove),
                onPressed: () {
                  model.remove(model.bascketItems[index]);
                },
              ),
            ),
          );
        });
  }
}
