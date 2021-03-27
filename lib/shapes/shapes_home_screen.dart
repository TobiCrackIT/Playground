import 'package:flutter/material.dart';
import 'package:tiko/shapes/shape_painter.dart';
import 'dart:math' as math;

class ShapesHomeScreen extends StatefulWidget {
  @override
  _ShapesHomeScreenState createState() => _ShapesHomeScreenState();
}

class _ShapesHomeScreenState extends State<ShapesHomeScreen>
    with TickerProviderStateMixin {
  var _sides = 3.0;
  var _radius = 100.0;
  var _radians = 0.0;

  Animation<double> animation;
  AnimationController controller;
  Tween<double> _rotationTween = Tween(begin: -math.pi, end: math.pi);

  @override
  void initState() {
    super.initState();

    animation =
        AnimationController(vsync: this, duration: Duration(seconds: 4));
    animation = _rotationTween.animate(controller)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller.repeat();
        } else if (status == AnimationStatus.dismissed) {
          controller.forward();
        }
      });

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lines'),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            child: CustomPaint(
              painter: ShapePainter(sides: _sides,radius: _radius,radians: animation.value),
              child: Container(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text('Sides'),
          ),
          Slider(
            value: _sides,
            min: 3,
            max: 12,
            divisions: 9,
            label: '${_sides.toInt()}',
            onChanged: (value) {
              setState(() {
                _sides = value;
              });
            },
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text('Radius'),
          ),
          Slider(
            value: _radius,
            min: 10,
            max: MediaQuery.of(context).size.width / 2,
            label: '${_radius.toInt()}',
            onChanged: (value) {
              setState(() {
                _radius = value;
              });
            },
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text('Rotation'),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text('Rotation'),
          ),
          Slider(
            value: _radians,
            min: 0.0,
            max: math.pi,
            onChanged: (value) {
              setState(() {
                _radians = value;
              });
            },
          ),
          SizedBox(height: 40),
        ],
      )),
    );
  }
}
