import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class UnderlineGradientTabIndicator extends Decoration {
  final double radius;
  final double width;
  final double height;
  final double bottomMargin;
  final List<Color> colors;
  final List<double>? colorStops;
  final TileMode tileMode;

  const UnderlineGradientTabIndicator({
    this.radius = 2.0,
    this.width = 25.0,
    this.height = 5.0,
    this.bottomMargin = 10.0,
    required this.colors,
    this.colorStops = const [0.0, 1.0],
    this.tileMode = TileMode.decal,
  });

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _UnderlineGradientPainter(
      radius: radius,
      width: width,
      height: height,
      bottomMargin: bottomMargin,
      colors: colors,
      colorStops: colorStops,
      tileMode: tileMode,
    );
  }
}

class _UnderlineGradientPainter extends BoxPainter {
  final double radius;
  final double width;
  final double height;
  final double bottomMargin;
  final List<Color> colors;
  final List<double>? colorStops;
  final TileMode tileMode;

  const _UnderlineGradientPainter(
      {required this.radius,
      required this.width,
      required this.height,
      required this.bottomMargin,
      required this.colors,
      this.colorStops,
      this.tileMode = TileMode.clamp});

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration config) {
    if (config.size != null) {
      final centerX = (config.size!.width / 2 + offset.dx);
      final bottom = (config.size!.height - bottomMargin);
      final halfWidth = width / 2;

      final startGradient = Offset(centerX - halfWidth, centerX);
      final endGradient = Offset(centerX + halfWidth, centerX);

      Paint paint = Paint()
        ..isAntiAlias = true
        ..shader = ui.Gradient.linear(
            startGradient, endGradient, colors, colorStops, tileMode);

      canvas.drawRRect(
          RRect.fromLTRBR(centerX - halfWidth, bottom - height,
              centerX + halfWidth, bottom, Radius.circular(radius)),
          paint);
    }
  }
}
