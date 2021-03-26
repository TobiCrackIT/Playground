import 'package:flutter/material.dart';

class ShapePainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    var height=size.height;
    var width=size.width;

    var paint=Paint()
      ..color=Colors.red
        ..strokeWidth=5
        ..style = PaintingStyle.stroke
        ..strokeCap=StrokeCap.round;

    var path = Path();
    path.moveTo(0, size.height / 2);
    path.lineTo(size.width, size.height / 2);


    Offset center = Offset(size.width / 2, size.height / 2);
    canvas.drawCircle(center, 100, paint);

    canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return null;
  }

}