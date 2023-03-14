import 'package:flutter/material.dart';

class QuadraticBezierTo extends StatelessWidget {
  const QuadraticBezierTo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 2.7,
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromARGB(255, 102, 221, 236),
        Color.fromARGB(255, 6, 136, 158),
      ])),
    );
  }
}
