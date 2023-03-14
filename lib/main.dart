import 'package:flutter/material.dart';
import 'package:quadratic_bezier_to/home.dart';

void main() {
  runApp(const MiaSoftware());
}

class MiaSoftware extends StatelessWidget {
  const MiaSoftware({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QuadraticBezierTo',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.cyan,
      ),
      home: const Home(),
    );
  }
}
