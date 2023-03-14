import 'package:flutter/material.dart';

class ClipLine extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    //! posição de x = 0 e y = o valor máximo da tela
    path.lineTo(0.0, size.height);

    //! posição de x = o valor máximo da tela e y = 0
    path.lineTo(size.width, 0);

    //! fechar do quadrado
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}
