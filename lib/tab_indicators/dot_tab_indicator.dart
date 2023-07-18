import 'package:flutter/material.dart';

class DotTabIndicator extends Decoration {
  final Color color;
  final double radius;

  const DotTabIndicator({required this.color, required this.radius});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _DotPainter(color: color, radius: radius);
  }
}

class _DotPainter extends BoxPainter {
  final Color color;
  final double radius;

  const _DotPainter({required this.color, required this.radius});

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration config) {
    Paint paint = Paint()
      ..color = color
      ..isAntiAlias = true;

    if (config.size != null) {
      final Offset circleOffset = offset +
          Offset(config.size!.width / 2, config.size!.height - radius - 5);

      canvas.drawCircle(circleOffset, radius, paint);
    }
  }
}
