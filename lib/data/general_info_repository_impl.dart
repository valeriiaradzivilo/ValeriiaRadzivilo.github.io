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
      SkillEntry('BLoC', Color(0xFF6C63FF)),
      SkillEntry('Android SDK', Color(0xFF5CCC68)),
      SkillEntry('SQL', Color(0xFFED8936)),
      SkillEntry('REST API', Color(0xFF48BB78)),
      SkillEntry('Unit / Integration / Widget testing', Color(0xFF38A169)),
      SkillEntry('App publishing to stores', Color(0xFF4299E1)),
      SkillEntry('Java / Kotlin / Swift', Color(0xFFE53E3E)),
      SkillEntry('Git Version Control', Color(0xFFF56565)),
      SkillEntry('Supabase / Firebase', Color(0xFFFFA000)),
      SkillEntry('VS Code', Color(0xFF0078D4)),
      SkillEntry('Android Studio', Color(0xFF3DDC84)),
      SkillEntry('Rive / Lottie', Color(0xFF9F7AEA)),
    ],
    experiences: [
      ExperienceEntry(
        title: 'Online English Teacher',
        place: '',
        period: '2021 – 2023',
        description: [
          'Prepared lessons and maintained organized files and documentation for each student.',
        ],
        color: Color(0xFFF6AD55),
      ),
      ExperienceEntry(
        title: 'Flutter Developer',
        place: 'Porada',
        period: 'Mar 2023 – Jul 2023',
        description: [
          'Worked with Supabase and GetStream to create the mentoring portal.',
          'Created a live chat using GetStream.',
        ],
        color: Color(0xFF48BB78),
      ),
      ExperienceEntry(
        title: 'Flutter Developer',
        place: 'Forte Group',
        period: 'Jul 2023 – Jan 2025',
        description: [
          'Covered 60% of the app\'s main features with integration and unit tests.',
          'Effectively collaborated in remote teams across time zones.',
          'Engaged in collaborative coding.',
          'Reduced the application\'s APK size by 30%, optimizing performance and improving user experience on low-storage devices.',
        ],
        color: Color(0xFF6C63FF),
      ),
      ExperienceEntry(
        title: 'Flutter Developer',
        place: 'Dreambit',
        period: 'Feb 2025 – Jun 2026',
        description: [
          'Developed web and mobile applications across multiple domains.',
          'Refactored legacy codebases for improved maintainability.',
          'Created an educational platform for teachers, focusing on clear UX and streamlined workflows to ensure ease of use.',
          'Built an entertainment app designed to help users relax and boost creativity.',
          'Designed and implemented features for an AI-driven productivity app, allowing users to capture, organize, and structure ideas seamlessly.',
        ],
        color: Color(0xFFED64A6),
      ),
    ],
    education: EducationEntry(
      program: 'Computer Science',
      degree: "Bachelor's Degree",
      period: '2018 – 2022',
    ),
    languages: [
      LanguageEntry(language: 'Ukrainian', level: 'Native', progress: 1.0),
      LanguageEntry(language: 'English', level: 'Professional', progress: 0.85),
    ],
    contact: ContactInfo(
      email: 'radzivilo.valeriia@gmail.com',
      linkedIn: 'https://www.linkedin.com/in/valeriia-radzivilo/',
      gitHub: 'https://github.com/ValeriiaRadzivilo',
    ),
  );
}
