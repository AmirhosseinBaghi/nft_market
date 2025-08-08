import 'dart:ui';

import 'package:flutter/material.dart';

class Glassmorphism extends StatelessWidget {
  final Widget child;
  final double borderradius;
  final double blur;
  final Color borderColor;
  final Color backgroundColor;
  const Glassmorphism({
    super.key,
    required this.child,
    this.borderradius = 20.0,
    this.blur = 10.0,
    this.borderColor = Colors.white70,
    this.backgroundColor = Colors.white10,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderradius),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderradius),
            border: Border.all(color: borderColor.withValues(alpha: 0.2)),
            color: backgroundColor.withValues(alpha: 0.2),
          ),
          child: child,
        ),
      ),
    );
  }
}
