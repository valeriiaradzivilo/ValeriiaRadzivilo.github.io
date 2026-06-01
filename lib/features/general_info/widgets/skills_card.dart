import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';

import '../../../../l10n/app_locale.dart';
import '../../../../shared/theme/text_styles.dart';
import '../../../data/models/general_info_model.dart';
import 'wall_picture.dart';

class SkillsCard extends StatelessWidget {
  final List<SkillGroup> skillGroups;

  const SkillsCard({super.key, required this.skillGroups});

  @override
  Widget build(BuildContext context) {
    return WallPicture(
      rotation: -0.7,
      pinColor: const Color(0xFF54C5F8),
      photo: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        decoration: const BoxDecoration(color: Color(0xFF2D3748)),
        child: Text(
          AppLocale.techSkills.getString(context),
          style: AppTextStyles.cardHeading(28),
        ),
      ),
      caption: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: skillGroups
            .map((group) => _SkillGroupSection(group: group))
            .toList(),
      ),
    );
  }
}

class _SkillGroupSection extends StatelessWidget {
  final SkillGroup group;

  const _SkillGroupSection({required this.group});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            group.labelKey.getString(context),
            style: AppTextStyles.label(
              12,
              color: const Color(0xFF718096),
              weight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 5),
          Wrap(
            spacing: 6,
            runSpacing: 6,
            children: group.skills.map(_buildChip).toList(),
          ),
        ],
      ),
    );
  }

  static Widget _buildChip(SkillEntry skill) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: skill.color.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: skill.color, width: 1.5),
      ),
      child: Text(
        skill.name,
        style: TextStyle(
          fontSize: 13,
          color: skill.color,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
