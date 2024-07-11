import 'package:flutter/material.dart';

class SingleProduct extends StatelessWidget {
  String name;
  int price;
  final Function? onTap;
  SingleProduct({super.key, required this.name, required this.price, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 100,
      color: const Color.fromARGB(255, 224, 224, 224),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Name :${name}'),
          const SizedBox(
            width: 200,
          ),
          Text('Price :${price}'),
        ],
      ),
    );
  }
}
