import 'package:flutter/material.dart';

import 'Widgets/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Home',
      home: MyHomePage(),
    );
  }
}

