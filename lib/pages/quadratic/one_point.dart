import 'package:flutter/material.dart';
import 'package:quadratic_bezier_to/clip_one.dart';
import 'package:quadratic_bezier_to/quadratic_bezier_to.dart';

class OnePoint extends StatelessWidget {
  const OnePoint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            ''' 
          Recebe quatro parâmetros, os dois primeiros X1 e Y1 são a posição do ponto de controle, esse ponto de controle é como se fosse um “imã” que puxa a reta para posição dele curvando-a. Os dois último X2 e Y2, como deve imaginar é a posição dos pontos da reta.
          ''',
            textAlign: TextAlign.justify,
          ),
        ),
        ClipPath(
          clipper: ClipOne(),
          child: const QuadraticBezierTo(),
        ),
      ],
    );
  }
}
