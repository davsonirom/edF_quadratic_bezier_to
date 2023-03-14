import 'package:flutter/material.dart';
import 'package:quadratic_bezier_to/clip_two.dart';
import 'package:quadratic_bezier_to/quadratic_bezier_to.dart';

class TwoPoint extends StatelessWidget {
  const TwoPoint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            ''' 
        Posso declarar mais de um ponto de controle? Claro que pode, vou fazer mais um exemplo com dois pontos de controle, lembre-se nem sempre vai ser de primeira o resultado esperado e as vezes vai precisar de vários pontos de controle pra chegar a um bom resultado.
        ''',
            textAlign: TextAlign.justify,
          ),
        ),
        ClipPath(
          clipper: ClipTwo(),
          child: const QuadraticBezierTo(),
        )
      ],
    );
  }
}
