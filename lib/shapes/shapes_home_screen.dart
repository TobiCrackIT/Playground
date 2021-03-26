import 'package:flutter/material.dart';
import 'package:tiko/shapes/shape_painter.dart';

class ShapesHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lines'),
      ),
      body: CustomPaint(
        painter: ShapePainter(),
        child: Container(),
      ),
    );
  }
}
