import 'package:flutter/material.dart';
import 'package:tab_bar_in_body_practice/tab_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TabBarPage(),
    );
  }
}
