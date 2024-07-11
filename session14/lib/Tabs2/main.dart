import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(List<String> args) {
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tabs2'),
          backgroundColor: Colors.amberAccent,
        ),
        body: const DefaultTabController(
            length: 4,
            child: Column(
              children: [
                TabBar(
                  indicatorWeight: 1,
                  padding: EdgeInsets.all(20),

                  tabs: [
                    Icon(Icons.abc),
                    Icon(Icons.access_alarm_outlined),
                    Icon(Icons.add_alarm),
                    Icon(Icons.airline_seat_flat_angled)
                  ],
                ),
                Expanded(
                child: TabBarView(
                  children: [
                    Center(child: Text('Tab 1 content')),
                    Center(child: Text('Tab 2 content')),
                    Center(child: Text('Tab 3 content')),
                    Center(child: Text('Tab 4 content')),
                  ],
                ),
              ),
              ],
            )),
      ),
    );
  }
}
