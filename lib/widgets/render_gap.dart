import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class RenderGap extends RenderBox{
  double _mainAxisSize;
  double get mainAxisSize=>_mainAxisSize;


  RenderGap({double mainAxisSize}):_mainAxisSize=mainAxisSize;

  setMainAxisSize(double value){
    if(_mainAxisSize!=value){
      _mainAxisSize=value;
      markNeedsLayout();
    }
  }

  @override
  void performLayout() {
    final AbstractNode flex=parent;

    if(flex is RenderFlex){
      if(flex.direction==Axis.horizontal){
        size=constraints.constrain(Size(_mainAxisSize, 0));
      }else{
        size=constraints.constrain(Size(0, _mainAxisSize));
      }
    }else{
      throw FlutterError('A Gap widget must be placed directly inside a Flex widget',);
    }
    super.performLayout();
  }

}