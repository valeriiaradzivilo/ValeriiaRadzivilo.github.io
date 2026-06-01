import 'package:flutter/material.dart';

import '../../../../shared/theme/text_styles.dart';
import '../../../data/models/general_info_model.dart';
import 'wall_picture.dart';

class ExperienceCard extends StatelessWidget {
  final ExperienceEntry experience;

  const ExperienceCard({super.key, required this.experience});

  @override
  Widget build(BuildContext context) {
    final c = experience.color;
    return WallPicture(
      rotation: experience.rotation,
      pinColor: c,
      photo: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(color: c),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Experience',
              style: AppTextStyles.fadedOnColor(13, c),
            ),
            const SizedBox(height: 4),
            Text(experience.title, style: AppTextStyles.cardHeading(22)),
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
                  '${experience.place}  |  ${experience.period}',
                  style: AppTextStyles.fadedOnColor(14, c),
                ),
              ],
            ),
          ],
        ),
      ),
      caption: Text(
        experience.description,
        style: AppTextStyles.label(14, color: const Color(0xFF4A5568)),
      ),
    );
  }
}
