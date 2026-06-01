import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';

import '../../../../l10n/app_locale.dart';
import '../../../../shared/theme/text_styles.dart';
import 'wall_picture.dart';

class AboutCard extends StatelessWidget {
  const AboutCard({super.key});

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
        child: Text(
          AppLocale.aboutMe.getString(context),
          style: AppTextStyles.cardHeading(32),
        ),
      ),
      caption: Text(
        AppLocale.aboutText.getString(context),
        style: AppTextStyles.label(15, color: const Color(0xFF4A5568)),
      ),
    );
  }
}
