import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart'
    show FlutterLocalization;

import '../theme/text_styles.dart';

class LanguageSwitcherButton extends StatelessWidget {
  const LanguageSwitcherButton({super.key});

  @override
  Widget build(BuildContext context) {
    final isEn = Localizations.localeOf(context).languageCode != 'uk';

    return InkWell(
      key: ValueKey(
        'language_switcher_button_${Localizations.localeOf(context).languageCode}',
      ),
      onTap: () => FlutterLocalization.instance.translate(isEn ? 'uk' : 'en'),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.88),
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.18),
              blurRadius: 6,
              offset: const Offset(2, 3),
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              isEn ? 'А давайте українською' : 'In English, please',
              style: AppTextStyles.label(
                14,
                weight: FontWeight.w600,
                color: const Color(0xFF4A5568),
              ),
            ),
            const SizedBox(width: 8),
            Text(isEn ? '🇺🇦' : '🇬🇧', style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
