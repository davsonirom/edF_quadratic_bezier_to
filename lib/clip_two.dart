import 'package:flutter/material.dart';

//* mesma coisa quando se trabalha com apenas um ponto, com a difereção de ciar mais ponto de controles

class ClipTwo extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    //! posição de x = 0 e y = o valor máximo da tela
    path.lineTo(0.0, size.height);

    //! ponto de controle
    //? X = ((size.width/2)/2) e Y = ((size.heigth/2)/2) ponto de controle
    var fristControlPoint = Offset(size.width / 4, size.height / 2);

    //? pontos da reta x = valor máximo de y = 0
    var fristEndPoint = Offset(size.width / 2, size.height / 2);

    path.quadraticBezierTo(
      fristControlPoint.dx,
      fristControlPoint.dy,
      fristEndPoint.dx,
      fristEndPoint.dy,
    );

    // * segundo ponto de controle
    var secundControlPoint = Offset(size.width, size.height / 2);

    //? pontos da reta x = valor máximo de y = 0
    var secundEndPoint = Offset(size.width, 0);

    path.quadraticBezierTo(
      secundControlPoint.dx,
      secundControlPoint.dy,
      secundEndPoint.dx,
      secundEndPoint.dy,
    );

    // * para mais pontos basta repetir o estrutura dos pontos anteriores
    // * nome do ponto como sua dada posisão inicia e final depois declaralos no quadraticBezieTo()

    //! fechar do quadrado
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}
