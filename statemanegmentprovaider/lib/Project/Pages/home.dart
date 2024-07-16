import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanegmentprovaider/Project/Pages/Model/cart.dart';
import 'package:statemanegmentprovaider/Project/Pages/checkOut.dart';
import './Model/item.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Item> items = [
    Item(name: 's20', price: 220),
    Item(name: 's30', price: 230),
    Item(name: 's40', price: 240),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const CheckOut()));
                    },
                    icon: const Icon(Icons.add_shopping_cart)),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Consumer<Cart>(
                    builder: (context, cart, child) => Text('${cart.totalPrice}'),
                  ),
                ),
              ],
            )
          ],
          backgroundColor: const Color.fromARGB(255, 66, 165, 168),
          title: const Text('Home'),
        ),
        body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, i) {
              return Card(
                  child: Consumer<Cart>(
                builder: (context, value, child) => ListTile(
                  title: Text('${items[i].name}'),
                  trailing: IconButton(
                    icon: const Icon(Icons.add),
                    onPressed: () {
                      value.add(items[i]);
                    },
                  ),
                ),
              ));
            }));
  }
}
