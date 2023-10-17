import 'package:flutter/material.dart';
import 'package:qoutes_app/home.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: wisdom(),
    );
  }
}
