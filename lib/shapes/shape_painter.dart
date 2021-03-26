import 'package:flutter/material.dart';
import 'dart:math' as math;

class ShapePainter extends CustomPainter{


  final double sides;
  final double radius;
  final double radians;
  ShapePainter({this.sides = 3, this.radius = 100, this.radians = 0.0});

  @override
  void paint(Canvas canvas, Size size) {
    var _height=size.height;
    var _width=size.width;


    var paint=Paint()
      ..color=Colors.red
        ..strokeWidth=5
        ..style = PaintingStyle.stroke
        ..strokeCap=StrokeCap.round;

    var path = Path();
    var angle=(math.pi *2 )/sides;
    Offset center=Offset(_width/2, _height/2);
    Offset startPoint=Offset(radius * math.cos(radians),radius*math.sin(radians));

    path.moveTo(startPoint.dx + center.dx, startPoint.dy+center.dy );

    for(int i=0;i<=sides;i++){
      double x= radius * math.cos(angle*i) + center.dx;
      double y= radius * math.sin(angle*i) + center.dy;

      path.lineTo(x, y);
    }

    path.close();
    canvas.drawPath(path, paint);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return null;
  }

}