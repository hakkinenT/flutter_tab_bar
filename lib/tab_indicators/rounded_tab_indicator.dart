import 'package:flutter/material.dart';

class RoundedTabIndicator extends Decoration {
  final Color color;
  final double radius;
  final double width;
  final double height;
  final double bottomMargin;

  const RoundedTabIndicator({
    this.color = Colors.red,
    this.radius = 2.0,
    this.width = 20.0,
    this.height = 4.0,
    this.bottomMargin = 10.0,
  });

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _RoundedRectanglePainter(
      color: color,
      radius: radius,
      width: width,
      height: height,
      bottomMargin: bottomMargin,
    );
  }
}

class _RoundedRectanglePainter extends BoxPainter {
  final Color color;
  final double radius;
  final double width;
  final double height;
  final double bottomMargin;

  const _RoundedRectanglePainter({
    required this.color,
    required this.radius,
    required this.width,
    required this.height,
    required this.bottomMargin,
  });

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration config) {
    if (config.size != null) {
      Paint paint = Paint()
        ..color = color
        ..isAntiAlias = true;

      final centerX = (config.size!.width / 2 + offset.dx);
      final bottom = (config.size!.height - bottomMargin);
      final halfWidth = width / 2;

      canvas.drawRRect(
          RRect.fromLTRBR(centerX - halfWidth, bottom - height,
              centerX + halfWidth, bottom, Radius.circular(radius)),
          paint);
    }
  }
}
