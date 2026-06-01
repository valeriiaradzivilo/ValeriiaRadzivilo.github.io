import 'package:flutter/material.dart';

abstract final class AppTextStyles {
  static const Color _defaultColor = Color(0xFF2D3748);

  static TextStyle label(
    double size, {
    Color color = _defaultColor,
    FontWeight weight = FontWeight.normal,
  }) =>
      TextStyle(fontSize: size, color: color, fontWeight: weight);

  static TextStyle cardHeading(double size) => TextStyle(
        fontSize: size,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      );

  static TextStyle fadedOnColor(double size, Color base) => TextStyle(
        fontSize: size,
        color: base.withValues(alpha: 0.8),
      );
}
