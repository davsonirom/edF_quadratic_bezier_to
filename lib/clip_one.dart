import 'package:flutter/widgets.dart';

class ClipOne extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    //! posição de x = 0 e y = o valor máximo da tela
    path.lineTo(0.0, size.height);

    //! ponto de controle
    var controlPoint = Offset(((size.width / 2) / 2), ((size.height / 2) / 2));
    var endPoint = Offset(size.width, 0);

    //? desenhar a linha que liga pos pontos máximo de x e y
    path.quadraticBezierTo(
      controlPoint.dx,
      controlPoint.dy,
      endPoint.dx,
      endPoint.dy,
    );

    //! fechar o quadrado
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}
