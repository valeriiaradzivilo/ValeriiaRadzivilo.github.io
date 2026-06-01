import 'package:flutter/material.dart';

import '../l10n/app_locale.dart';
import 'general_info_repository.dart';
import 'models/general_info_model.dart';

final class GeneralInfoRepositoryImpl implements GeneralInfoRepository {
  const GeneralInfoRepositoryImpl();

  @override
  GeneralInfoModel getInfo() => const GeneralInfoModel(
        name: 'Valeriia Radzivilo',
        titleKey: AppLocale.profileTitle,
        locationKey: AppLocale.profileLocation,
        skillGroups: [
          SkillGroup(
            labelKey: AppLocale.sgLanguages,
            skills: [
              SkillEntry('Dart', Color(0xFF00B4AB)),
              SkillEntry('Java', Color(0xFFE53E3E)),
              SkillEntry('Kotlin', Color(0xFF7F52FF)),
              SkillEntry('Swift', Color(0xFFFA7343)),
              SkillEntry('SQL', Color(0xFFED8936)),
            ],
          ),
          SkillGroup(
            labelKey: AppLocale.sgFrameworks,
            skills: [
              SkillEntry('Flutter', Color(0xFF54C5F8)),
              SkillEntry('Android SDK', Color(0xFF5CCC68)),
              SkillEntry('BLoC', Color(0xFF6C63FF)),
            ],
          ),
          SkillGroup(
            labelKey: AppLocale.sgBackend,
            skills: [
              SkillEntry('Supabase', Color(0xFF3ECF8E)),
              SkillEntry('Firebase', Color(0xFFFFA000)),
              SkillEntry('REST API', Color(0xFF48BB78)),
            ],
          ),
          SkillGroup(
            labelKey: AppLocale.sgTesting,
            skills: [
              SkillEntry('Unit testing', Color(0xFF38A169)),
              SkillEntry('Integration testing', Color(0xFF2F855A)),
              SkillEntry('Widget testing', Color(0xFF276749)),
            ],
          ),
          SkillGroup(
            labelKey: AppLocale.sgTools,
            skills: [
              SkillEntry('Git Version Control', Color(0xFFF56565)),
              SkillEntry('VS Code', Color(0xFF0078D4)),
              SkillEntry('Android Studio', Color(0xFF3DDC84)),
              SkillEntry('App publishing to stores', Color(0xFF4299E1)),
            ],
          ),
          SkillGroup(
            labelKey: AppLocale.sgAnimation,
            skills: [
              SkillEntry('Rive', Color(0xFF9F7AEA)),
              SkillEntry('Lottie', Color(0xFF667EEA)),
            ],
          ),
        ],
        experiences: [
          ExperienceEntry(
            titleKey: AppLocale.expTitleFlutter,
            place: 'Dreambit',
            period: 'Feb 2025 – Jun 2026',
            descriptionKeys: [
              AppLocale.expDreambit1,
              AppLocale.expDreambit2,
              AppLocale.expDreambit3,
              AppLocale.expDreambit4,
              AppLocale.expDreambit5,
            ],
            color: Color(0xFFED64A6),
          ),
          ExperienceEntry(
            titleKey: AppLocale.expTitleFlutter,
            place: 'Forte Group',
            period: 'Jul 2023 – Jan 2025',
            descriptionKeys: [
              AppLocale.expForte1,
              AppLocale.expForte2,
              AppLocale.expForte3,
              AppLocale.expForte4,
            ],
            color: Color(0xFF6C63FF),
          ),
          ExperienceEntry(
            titleKey: AppLocale.expTitleFlutter,
            place: 'Porada',
            period: 'Mar 2023 – Jul 2023',
            descriptionKeys: [
              AppLocale.expPorada1,
              AppLocale.expPorada2,
            ],
            color: Color(0xFF48BB78),
          ),
          ExperienceEntry(
            titleKey: AppLocale.expTitleTeacher,
            place: '',
            period: '2021 – 2023',
            descriptionKeys: [
              AppLocale.expTeacher1,
            ],
            color: Color(0xFFF6AD55),
          ),
        ],
        education: EducationEntry(
          institutionKey: AppLocale.educInstitution,
          programKey: AppLocale.educProgram,
          degreeKey: AppLocale.educDegreeBachelor,
          period: 'Sep 2021 – Jun 2025',
        ),
        languages: [
          LanguageEntry(
            languageKey: AppLocale.langUkrainian,
            levelKey: AppLocale.levelNative,
            progress: 1.0,
          ),
          LanguageEntry(
            languageKey: AppLocale.langEnglish,
            levelKey: AppLocale.levelProfessional,
            progress: 0.85,
          ),
        ],
        contact: ContactInfo(
          email: 'radzivilo.valeriia@gmail.com',
          linkedIn: 'https://www.linkedin.com/in/valeriia-radzivilo/',
          gitHub: 'https://github.com/ValeriiaRadzivilo',
        ),
      );
}
