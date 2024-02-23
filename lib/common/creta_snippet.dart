import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import 'creta_color.dart';

class CretaSnippet {
   static Widget showWaitSign({double size = 40.0, Color color = CretaColor.primary}) {
    return LoadingAnimationWidget.fourRotatingDots(
      color: color,
      size: size,
    );
  }
}