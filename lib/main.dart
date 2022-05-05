import 'package:flutter/material.dart';
import 'package:quickstart/pantalla.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      //theme: ThemeData(accentColor: Colors.white),
      home: Paw1(),
    );
  }
}
