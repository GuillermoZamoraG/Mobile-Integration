import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/start-screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UberEats',
      home: StartScreen(),
    );
  }
}
