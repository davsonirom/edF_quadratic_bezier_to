import 'package:flutter/material.dart';
import 'package:quadratic_bezier_to/pages/line/line.dart';
import 'package:quadratic_bezier_to/pages/quadratic/one_point.dart';
import 'package:quadratic_bezier_to/pages/quadratic/two_point.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _controller = PageController();
  int pagina = 0;

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Curva em quadro'.toUpperCase(),
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      body: PageView(
        controller: _controller,
        children: const [
          Line(),
          OnePoint(),
          TwoPoint(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pagina,
        onTap: (index) {
          setState(() {
            pagina = index;
            _controller.animateToPage(
              pagina,
              duration: const Duration(microseconds: 500),
              curve: Curves.ease,
            );
          });
        },
        type: BottomNavigationBarType.fixed,
        elevation: 10,
        selectedItemColor: Colors.cyan.shade300,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.pages),
            label: 'Line',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.pages), label: 'One Point'),
          BottomNavigationBarItem(icon: Icon(Icons.pages), label: 'Two Point'),
        ],
      ),
    );
  }
}
