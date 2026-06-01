import 'package:flutter/material.dart';

import 'general_info_repository.dart';
import 'models/general_info_model.dart';

final class GeneralInfoRepositoryImpl implements GeneralInfoRepository {
  const GeneralInfoRepositoryImpl();

  @override
  GeneralInfoModel getInfo() => const GeneralInfoModel(
        name: 'Valeriia Radzivilo',
        title: 'Flutter Developer',
        location: 'Ukraine',
        about:
            "Hi! I'm a passionate Flutter & Dart developer who loves crafting "
            'beautiful, performant cross-platform apps for Android, iOS, and Web. '
            'I enjoy clean architecture, BLoC state management, and turning '
            'design ideas into polished products.',
        skills: [
          SkillEntry('Flutter', Color(0xFF54C5F8)),
          SkillEntry('Dart', Color(0xFF00B4AB)),
          SkillEntry('Firebase', Color(0xFFFFA000)),
          SkillEntry('BLoC / Cubit', Color(0xFF6C63FF)),
          SkillEntry('REST API', Color(0xFF48BB78)),
          SkillEntry('go_router', Color(0xFF4299E1)),
          SkillEntry('Git', Color(0xFFE53E3E)),
          SkillEntry('Android', Color(0xFF5CCC68)),
          SkillEntry('iOS', Color(0xFF667EEA)),
          SkillEntry('Web', Color(0xFFED8936)),
          SkillEntry('Hive / SQLite', Color(0xFF9F7AEA)),
          SkillEntry('Firebase Auth', Color(0xFFF6AD55)),
        ],
        experiences: [
          ExperienceEntry(
            title: 'Flutter Developer',
            place: 'Company',
            period: '2022 – Present',
            description:
                'Developing cross-platform apps with Flutter & Dart. '
                'Firebase backend, BLoC state management, go_router navigation, '
                'REST API integrations.',
            color: Color(0xFF6C63FF),
            rotation: 1.5,
          ),
          ExperienceEntry(
            title: 'Junior Mobile Developer',
            place: 'Startup',
            period: '2020 – 2022',
            description:
                'Built and maintained Android & iOS applications, '
                'contributed to UI redesigns and third-party API integrations.',
            color: Color(0xFF48BB78),
            rotation: -1.2,
          ),
        ],
        education: EducationEntry(
          program: 'Computer Science',
          degree: "Bachelor's Degree",
          period: '2018 – 2022',
        ),
        languages: [
          LanguageEntry(language: 'Ukrainian', level: 'Native', progress: 1.0),
          LanguageEntry(
            language: 'English',
            level: 'Professional',
            progress: 0.85,
          ),
        ],
        contact: ContactInfo(
          email: 'lerazip32@gmail.com',
          linkedIn: 'https://www.linkedin.com/in/valeriia-radzivilo/',
          gitHub: 'https://github.com/ValeriiaRadzivilo',
        ),
      );
}
