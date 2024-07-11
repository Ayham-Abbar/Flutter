import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:session14/Tabs/Pages/home.dart';
import 'package:session14/Tabs/Pages/secound.dart';
import 'package:session14/Tabs/Pages/three.dart';

void main(List<String> args) {
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        initialIndex: 1, //تحدد التبويبة التي ستبدأ بالعرض
        length: 3, //عدد التبويبات
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Main Page'),
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.abc),
                ),
                Tab(
                  icon: Icon(Icons.access_alarm_outlined),
                ),
                Tab(
                  icon: Icon(Icons.add_comment_outlined),
                ),
              ],
              indicatorColor: Colors.red,//لون المؤشر 
              labelColor: Colors.blue,//لون النص للتبويبة المختارة.
              unselectedLabelColor: Colors.grey,//لون النص للتبويبات غير المختارة.
            ),
          ),
          body: const TabBarView(
            children: [Home(), Secound(), Three()],
          ),
        ),
      ),
    );
  }
}
