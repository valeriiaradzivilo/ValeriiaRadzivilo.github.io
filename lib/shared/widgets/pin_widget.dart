import 'package:flutter/material.dart';

class PinWidget extends StatelessWidget {
  final Color color;
  final double size;

  const PinWidget({
    super.key,
    this.color = const Color(0xFFE53E3E),
    this.size = 26,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(size, size * 1.9),
      painter: _PinPainter(color: color),
    );
  }
}

class _PinPainter extends CustomPainter {
  final Color color;

  const _PinPainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final cx = size.width / 2;
    final headR = size.width / 2;
    final headCy = headR;
    final headCenter = Offset(cx, headCy);

    // ── shadow under head ────────────────────────────────────────────────
    canvas.drawCircle(
      headCenter + const Offset(2, 3),
      headR,
      Paint()
        ..color = Colors.black.withValues(alpha: 0.28)
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 5),
    );

    // ── shaft ─────────────────────────────────────────────────────────────
    final shaftTop = headCy + headR * 0.55;
    final shaftBottom = size.height;
    final shaftW = size.width * 0.12;

    // shaft shadow
    final shaftRect = Rect.fromLTWH(cx - shaftW - 1, shaftTop, shaftW * 2 + 2, shaftBottom - shaftTop);
    final shaftPath = _shaftPath(cx, shaftTop, shaftBottom, shaftW);
    canvas.drawPath(
      shaftPath,
      Paint()
        ..color = Colors.black.withValues(alpha: 0.22)
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 3)
        ..style = PaintingStyle.fill,
    );

    // shaft body — metallic silver gradient
    canvas.drawPath(
      shaftPath,
      Paint()
        ..shader = const LinearGradient(
          colors: [Color(0xFFDDDDDD), Color(0xFF888888), Color(0xFFBBBBBB)],
          stops: [0.0, 0.5, 1.0],
        ).createShader(shaftRect)
        ..style = PaintingStyle.fill,
    );

    // ── head ──────────────────────────────────────────────────────────────
    final hsl = HSLColor.fromColor(color);
    final darkColor = hsl.withLightness((hsl.lightness - 0.18).clamp(0.0, 1.0)).toColor();
    final lightColor = Color.lerp(color, Colors.white, 0.45)!;

    // rim
    canvas.drawCircle(headCenter, headR, Paint()..color = darkColor);

    // main dome gradient
    canvas.drawCircle(
      headCenter,
      headR - 1,
      Paint()
        ..shader = RadialGradient(
          center: const Alignment(-0.35, -0.4),
          radius: 0.9,
          colors: [lightColor, color, darkColor],
          stops: const [0.0, 0.55, 1.0],
        ).createShader(Rect.fromCircle(center: headCenter, radius: headR - 1)),
    );

    // specular glint
    canvas.drawCircle(
      headCenter + Offset(-headR * 0.28, -headR * 0.28),
      headR * 0.22,
      Paint()
        ..color = Colors.white.withValues(alpha: 0.72)
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 1.5),
    );
  }

  Path _shaftPath(double cx, double top, double bottom, double halfW) {
    return Path()
      ..moveTo(cx - halfW, top)
      ..lineTo(cx + halfW, top)
      ..lineTo(cx + halfW * 0.3, bottom)
      ..lineTo(cx - halfW * 0.3, bottom)
      ..close();
  }

  @override
  bool shouldRepaint(_PinPainter old) => old.color != color;
}
