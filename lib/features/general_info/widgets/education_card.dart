import 'package:flutter/material.dart';

import '../../../../shared/theme/text_styles.dart';
import '../data/models/general_info_model.dart';
import 'wall_picture.dart';

class EducationCard extends StatelessWidget {
  final EducationEntry education;

  const EducationCard({super.key, required this.education});

  @override
  Widget build(BuildContext context) {
    return WallPicture(
      rotation: 1.8,
      pinColor: const Color(0xFFE53E3E),
      photo: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFFF6B6B), Color(0xFFFFE66D)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Text('Education', style: AppTextStyles.cardHeading(28)),
      ),
      caption: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            education.program,
            style: AppTextStyles.label(16, weight: FontWeight.bold),
          ),
          const SizedBox(height: 2),
          Text(
            education.degree,
            style: AppTextStyles.label(14, color: const Color(0xFF718096)),
          ),
          const SizedBox(height: 2),
          Text(
            education.period,
            style: AppTextStyles.label(13, color: const Color(0xFF9B59B6)),
          ),
        ],
      ),
    );
  }
}
