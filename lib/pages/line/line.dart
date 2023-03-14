import 'package:flutter/material.dart';
import 'package:quadratic_bezier_to/clip_line.dart';
import 'package:quadratic_bezier_to/quadratic_bezier_to.dart';

class Line extends StatelessWidget {
  const Line({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            '''
          Para formar uma gráfico assim com lineTo, tem que declarar as retas, como podem ver existe duas retas. A primeira reta será da posição 0 de Y até a posição máxima de X (X = size.widgth, Y = 0), e a segunda será da posição 0 de X até a posição máxima de Y (X = 0, Y = size.heigth).
           ''',
            textAlign: TextAlign.justify,
          ),
        ),
        ClipPath(
          clipper: ClipLine(),
          child: const QuadraticBezierTo(),
        )
      ],
    );
  }
}
