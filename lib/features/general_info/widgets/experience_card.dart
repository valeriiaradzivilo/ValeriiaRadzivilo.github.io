import 'package:flutter/material.dart';

import 'wall_picture.dart';

class ExperienceCard extends StatelessWidget {
  final String title;
  final String place;
  final String period;
  final String description;
  final Color color;
  final double rotation;

  const ExperienceCard({
    super.key,
    required this.title,
    required this.place,
    required this.period,
    required this.description,
    required this.color,
    this.rotation = 0,
  });

  @override
  Widget build(BuildContext context) {
    return WallPicture(
      rotation: rotation,
      pinColor: color,
      photo: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(color: color),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Experience',
              style: TextStyle(
                fontSize: 13,
                color: Colors.white.withValues(alpha: 0.7),
              ),
            ),
            const SizedBox(height: 4),
            Text(
              title,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                Icon(
                  Icons.business_outlined,
                  size: 13,
                  color: Colors.white.withValues(alpha: 0.8),
                ),
                const SizedBox(width: 4),
                Text(
                  '$place  |  $period',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white.withValues(alpha: 0.9),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      caption: Text(
        description,
        style: wallLabel(14, color: const Color(0xFF4A5568)),
      ),
    );
  }
}
