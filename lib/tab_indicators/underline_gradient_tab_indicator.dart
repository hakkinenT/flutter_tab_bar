import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class UnderlineGradientTabIndicator extends Decoration {
  final double strokeWidth;
  final Color primaryColor;
  final Color secondaryColor;
  final double radius;
  final double width;
  final double height;
  final double bottomMargin;

  const UnderlineGradientTabIndicator({
    required this.strokeWidth,
    required this.primaryColor,
    required this.secondaryColor,
    this.radius = 2.0,
    this.width = 20.0,
    this.height = 4.0,
    this.bottomMargin = 10.0,
  });

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _UnderlineGradientPainter(
      strokeWidth: strokeWidth,
      primaryColor: primaryColor,
      secondaryColor: secondaryColor,
      radius: radius,
      width: width,
      height: height,
      bottomMargin: bottomMargin,
    );
  }
}

class _UnderlineGradientPainter extends BoxPainter {
  final double strokeWidth;
  final Color primaryColor;
  final Color secondaryColor;
  final double radius;
  final double width;
  final double height;
  final double bottomMargin;

  const _UnderlineGradientPainter({
    required this.strokeWidth,
    required this.primaryColor,
    required this.secondaryColor,
    required this.radius,
    required this.width,
    required this.height,
    required this.bottomMargin,
  });

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration config) {
    if (config.size != null) {
      final centerX = (config.size!.width / 2 + offset.dx);
      final bottom = (config.size!.height - bottomMargin);
      final halfWidth = width / 2;

      final startGradient = Offset(centerX - halfWidth, centerX);
      final endGradient = Offset(centerX + halfWidth, centerX);

      Paint paint = Paint()
        ..strokeWidth = strokeWidth
        ..shader = ui.Gradient.linear(
          startGradient,
          endGradient,
          [
            primaryColor,
            secondaryColor,
          ],
        );

      canvas.drawRRect(
          RRect.fromLTRBR(centerX - halfWidth, bottom - height,
              centerX + halfWidth, bottom, Radius.circular(radius)),
          paint);
    }
  }
}
