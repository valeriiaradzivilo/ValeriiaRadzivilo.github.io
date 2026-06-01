import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';

import '../../../../l10n/app_locale.dart';
import '../../../../shared/theme/text_styles.dart';
import '../../../data/models/general_info_model.dart';
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
        child: Text(
          AppLocale.education.getString(context),
          style: AppTextStyles.cardHeading(28),
        ),
      ),
      caption: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            education.programKey.getString(context),
            style: AppTextStyles.label(15, weight: FontWeight.bold),
          ),
          const SizedBox(height: 2),
          Text(
            education.institutionKey.getString(context),
            style: AppTextStyles.label(13, color: const Color(0xFF718096)),
          ),
          const SizedBox(height: 2),
          Text(
            education.degreeKey.getString(context),
            style: AppTextStyles.label(10, color: const Color(0xFF718096)),
          ),
          const SizedBox(height: 2),
          Text(
            education.period,
            style: AppTextStyles.label(10, color: const Color(0xFF718096)),
          ),
        ],
      ),
    );
  }
}
