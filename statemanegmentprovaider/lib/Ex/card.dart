import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/modelCard.dart';

void main(List<String> args) {
  return runApp(ChangeNotifierProvider(
    create: (context) => Model(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    ),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Shopping'),
            Row(
              children: [
                Selector<Model, int>(
                  selector: (p0, p1) => p1.getCounter,
                  builder: (context, value, child) => Text('${value}'),
                ),
                IconButton(
                  icon: const Icon(Icons.card_giftcard),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
      body: Content(),
    );
  }
}

class Content extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyContentState();
  }
}

class _MyContentState extends State<Content> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Consumer<Model>(
              builder: (context, value, child) => ElevatedButton(
                  onPressed: () {
                    value.increment();
                  },
                  child: const Text('Add To Card')),
            )
          ],
        ),
        Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Consumer<Model>(
              builder: (context, value, child) => ElevatedButton(
                  onPressed: () {
                    value.decrement();
                  },
                  child: const Text('Remove To Card')),
            )
          ],
        ),
      ],
    );
  }
}
