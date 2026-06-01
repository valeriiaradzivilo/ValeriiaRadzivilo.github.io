import 'package:flutter/material.dart';

import '../../../../shared/theme/text_styles.dart';
import 'wall_picture.dart';

class AboutCard extends StatelessWidget {
  final String about;

  const AboutCard({super.key, required this.about});

  @override
  Widget build(BuildContext context) {
    return WallPicture(
      rotation: 1.2,
      pinColor: const Color(0xFFED8936),
      photo: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF667EEA), Color(0xFF764BA2)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Text('About Me', style: AppTextStyles.cardHeading(32)),
      ),
      caption: Text(
        about,
        style: AppTextStyles.label(15, color: const Color(0xFF4A5568)),
      ),
    );
  }
}
