import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:portfolio/shared/widgets/pin_widget.dart';

class WallPicture extends StatelessWidget {
  final Widget photo;
  final Widget caption;
  final double rotation;
  final Color pinColor;

  const WallPicture({
    super.key,
    required this.photo,
    required this.caption,
    this.rotation = 0,
    this.pinColor = const Color(0xFFE53E3E),
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Transform.rotate(
        angle: rotation * math.pi / 180,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.25),
                    blurRadius: 16,
                    offset: const Offset(4, 8),
                  ),
                ],
              ),
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ClipRect(child: photo),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: caption,
                  ),
                ],
              ),
            ),

            Positioned(
              top: -9,
              left: 0,
              right: 0,
              child: Center(
                child: Container(
                  width: 17,
                  height: 17,
                  decoration: BoxDecoration(
                    color: pinColor,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.35),
                        blurRadius: 4,
                        offset: const Offset(1, 2),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Positioned(
              top: -40,
              left: 0,
              right: 0,
              child: Center(child: PinWidget(color: pinColor, size: 20)),
            ),
          ],
        ),
      ),
    );
  }
}
