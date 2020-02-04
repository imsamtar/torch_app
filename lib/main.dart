import 'package:flutter/material.dart';
import 'package:torch_app/Home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Torch',
      home: Home(),
    );
  }
}
