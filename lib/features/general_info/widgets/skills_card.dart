import 'package:flutter/material.dart';

import '../../../../shared/theme/text_styles.dart';
import '../data/models/general_info_model.dart';
import 'wall_picture.dart';

class SkillsCard extends StatelessWidget {
  final List<SkillEntry> skills;

  const SkillsCard({super.key, required this.skills});

  @override
  Widget build(BuildContext context) {
    return WallPicture(
      rotation: -0.7,
      pinColor: const Color(0xFF54C5F8),
      photo: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        decoration: const BoxDecoration(color: Color(0xFF2D3748)),
        child: Text('Tech Skills', style: AppTextStyles.cardHeading(28)),
      ),
      caption: Padding(
        padding: const EdgeInsets.only(top: 4),
        child: Wrap(
          spacing: 8,
          runSpacing: 8,
          children: skills.map(_buildChip).toList(),
        ),
      ),
    );
  }

  static Widget _buildChip(SkillEntry skill) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: skill.color.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: skill.color, width: 1.5),
      ),
      child: Text(
        skill.name,
        style: TextStyle(
          fontSize: 14,
          color: skill.color,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
