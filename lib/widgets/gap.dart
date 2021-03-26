import 'package:flutter/material.dart';
import 'package:tiko/widgets/render_gap.dart';

class CustomGap extends LeafRenderObjectWidget {
  final double mainAxisSize;

  const CustomGap(this.mainAxisSize, {Key key})
      : assert(mainAxisSize != null &&
            mainAxisSize >= 0 &&
            mainAxisSize < double.infinity),
        super(key: key);

  @override
  RenderObject createRenderObject(BuildContext context) {
    return RenderGap(mainAxisSize:mainAxisSize);
  }

  @override
  void updateRenderObject(BuildContext context, RenderGap renderObject) {
    renderObject.setMainAxisSize(mainAxisSize);
  }
}
