mixin AppLocale {
  // ── Card / section titles ────────────────────────────────────────────────
  static const String aboutMe = 'about_me';
  static const String techSkills = 'tech_skills';
  static const String experience = 'experience';
  static const String education = 'education';
  static const String languages = 'languages';
  static const String findMe = 'find_me';

  // ── Skill group labels ───────────────────────────────────────────────────
  static const String sgLanguages = 'sg_languages';
  static const String sgFrameworks = 'sg_frameworks';
  static const String sgBackend = 'sg_backend';
  static const String sgTesting = 'sg_testing';
  static const String sgTools = 'sg_tools';
  static const String sgAnimation = 'sg_animation';

  // ── About paragraph ──────────────────────────────────────────────────────
  static const String aboutText = 'about_text';

  // ── Language proficiency levels ──────────────────────────────────────────
  static const String levelNative = 'level_native';
  static const String levelProfessional = 'level_professional';
  static const String readyToLearnMore = 'ready_to_learn_more';

  // ── English ──────────────────────────────────────────────────────────────
  static const Map<String, dynamic> en = {
    aboutMe: 'About Me',
    techSkills: 'Tech Skills',
    experience: 'Experience',
    education: 'Education',
    languages: 'Languages',
    findMe: 'Find Me',
    sgLanguages: 'Languages',
    sgFrameworks: 'Frameworks & SDKs',
    sgBackend: 'Backend & Cloud',
    sgTesting: 'Testing',
    sgTools: 'Tools & Publishing',
    sgAnimation: 'Animation',
    aboutText:
        "Hi! I'm a passionate Flutter & Dart developer who loves crafting "
        'beautiful, performant cross-platform apps for Android, iOS, and Web. '
        'I enjoy clean architecture, BLoC state management, and turning '
        'design ideas into polished products.',
    levelNative: 'Native',
    levelProfessional: 'Professional',
    readyToLearnMore: '# Ready to learn more',
  };

  // ── Ukrainian ────────────────────────────────────────────────────────────
  static const Map<String, dynamic> uk = {
    aboutMe: 'Про мене',
    techSkills: 'Навички',
    experience: 'Досвід',
    education: 'Освіта',
    languages: 'Мови',
    findMe: 'Знайди мене',
    sgLanguages: 'Мови програмування',
    sgFrameworks: 'Фреймворки та SDK',
    sgBackend: 'Бекенд та хмари',
    sgTesting: 'Тестування',
    sgTools: 'Інструменти',
    sgAnimation: 'Анімація',
    aboutText:
        'Привіт! Я Flutter & Dart розробниця, яка захоплюється створенням '
        'красивих та продуктивних кросплатформних застосунків для Android, '
        'iOS та вебу. Мені подобається чиста архітектура, BLoC state management '
        'та перетворення ідей на готові продукти.',
    levelNative: 'Рідна',
    levelProfessional: 'Професійна',
    readyToLearnMore: '# Готова вчитися більшому',
  };
}
