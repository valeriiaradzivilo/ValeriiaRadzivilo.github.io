import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';

import '../../../../l10n/app_locale.dart';
import '../../../../shared/theme/text_styles.dart';
import '../../../data/models/general_info_model.dart';
import 'wall_picture.dart';

class LanguagesCard extends StatelessWidget {
  final List<LanguageEntry> languages;

  const LanguagesCard({super.key, required this.languages});

  @override
  Widget build(BuildContext context) {
    return WallPicture(
      rotation: -1.0,
      pinColor: const Color(0xFF48BB78),
      photo: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF11998E), Color(0xFF38EF7D)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Text(
          AppLocale.languages.getString(context),
          style: AppTextStyles.cardHeading(28),
        ),
      ),
      caption: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...languages.map((entry) => Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: _LangRow(entry: entry),
              )),
          const SizedBox(height: 4),
          Text(
            AppLocale.readyToLearnMore.getString(context),
            style: AppTextStyles.label(
              13,
              color: const Color(0xFF718096),
              weight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

class _LangRow extends StatelessWidget {
  final LanguageEntry entry;

  const _LangRow({required this.entry});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              entry.languageKey.getString(context),
              style: AppTextStyles.label(16, weight: FontWeight.bold),
            ),
            Text(
              entry.levelKey.getString(context),
              style: AppTextStyles.label(13, color: const Color(0xFF718096)),
            ),
          ],
        ),
        const SizedBox(height: 4),
        ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: LinearProgressIndicator(
            value: entry.progress,
            backgroundColor: const Color(0xFFE2E8F0),
            valueColor:
                const AlwaysStoppedAnimation<Color>(Color(0xFF11998E)),
            minHeight: 6,
          ),
        ),
      ],
    );
  }
}
