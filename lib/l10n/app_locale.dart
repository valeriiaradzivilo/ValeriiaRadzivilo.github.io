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

  // ── Profile ──────────────────────────────────────────────────────────────
  static const String profileTitle = 'profile_title';
  static const String profileLocation = 'profile_location';

  // ── Experience – job titles ──────────────────────────────────────────────
  static const String expTitleFlutter = 'exp_title_flutter';
  static const String expTitleTeacher = 'exp_title_teacher';

  // ── Experience – Dreambit ────────────────────────────────────────────────
  static const String expDreambit1 = 'exp_dreambit_1';
  static const String expDreambit2 = 'exp_dreambit_2';
  static const String expDreambit3 = 'exp_dreambit_3';
  static const String expDreambit4 = 'exp_dreambit_4';
  static const String expDreambit5 = 'exp_dreambit_5';

  // ── Experience – Forte Group ─────────────────────────────────────────────
  static const String expForte1 = 'exp_forte_1';
  static const String expForte2 = 'exp_forte_2';
  static const String expForte3 = 'exp_forte_3';
  static const String expForte4 = 'exp_forte_4';

  // ── Experience – Porada ──────────────────────────────────────────────────
  static const String expPorada1 = 'exp_porada_1';
  static const String expPorada2 = 'exp_porada_2';

  // ── Experience – Teaching ────────────────────────────────────────────────
  static const String expTeacher1 = 'exp_teacher_1';

  // ── Education ────────────────────────────────────────────────────────────
  static const String educInstitution = 'educ_institution';
  static const String educProgram = 'educ_program';
  static const String educDegreeBachelor = 'educ_degree_bachelor';

  // ── Spoken languages ─────────────────────────────────────────────────────
  static const String langUkrainian = 'lang_ukrainian';
  static const String langEnglish = 'lang_english';

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
    profileTitle: 'Flutter Developer',
    profileLocation: 'Ukraine',
    expTitleFlutter: 'Flutter Developer',
    expTitleTeacher: 'Online English Teacher',
    expDreambit1:
        'Developed web and mobile applications across multiple domains.',
    expDreambit2: 'Refactored legacy codebases for improved maintainability.',
    expDreambit3:
        'Created an educational platform for teachers, focusing on clear UX and streamlined workflows to ensure ease of use.',
    expDreambit4:
        'Built an entertainment app designed to help users relax and boost creativity.',
    expDreambit5:
        'Designed and implemented features for an AI-driven productivity app, allowing users to capture, organize, and structure ideas seamlessly.',
    expForte1:
        "Covered 60% of the app's main features with integration and unit tests.",
    expForte2: 'Effectively collaborated in remote teams across time zones.',
    expForte3: 'Engaged in collaborative coding.',
    expForte4:
        "Reduced the application's APK size by 30%, optimizing performance and improving user experience on low-storage devices.",
    expPorada1:
        'Worked with Supabase and GetStream to create the mentoring portal.',
    expPorada2: 'Created a live chat using GetStream.',
    expTeacher1:
        'Prepared lessons and maintained organized files and documentation for each student.',
    educInstitution:
        "National Technical University of Ukraine 'Kyiv Polytechnic Institute'",
    educProgram: 'Computer Software Engineering',
    educDegreeBachelor: "Bachelor's Degree",
    langUkrainian: 'Ukrainian',
    langEnglish: 'English',
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
    profileTitle: 'Flutter розробниця',
    profileLocation: 'Україна',
    expTitleFlutter: 'Flutter розробниця',
    expTitleTeacher: 'Викладач англійської мови онлайн',
    expDreambit1: 'Розробляла веб та мобільні застосунки в різних доменах.',
    expDreambit2:
        'Рефакторила застарілі кодові бази для покращення підтримуваності.',
    expDreambit3:
        'Створила освітню платформу для вчителів з акцентом на зрозумілий UX та оптимізовані робочі процеси.',
    expDreambit4:
        'Розробила розважальний застосунок, що допомагає користувачам розслабитися та розвинути творчість.',
    expDreambit5:
        'Спроектувала та реалізувала функції для AI-застосунку продуктивності, що дозволяє фіксувати, організовувати та структурувати ідеї.',
    expForte1:
        'Покрила 60% основних функцій застосунку інтеграційними та unit-тестами.',
    expForte2:
        'Ефективно співпрацювала у дистанційних командах через різні часові пояси.',
    expForte3: 'Брала участь у спільному написанні коду.',
    expForte4:
        'Зменшила розмір APK застосунку на 30%, оптимізувавши продуктивність та покращивши досвід користувачів на пристроях з малим обсягом памʼяті.',
    expPorada1:
        'Працювала з Supabase та GetStream для створення менторського порталу.',
    expPorada2: 'Розробила живий чат за допомогою GetStream.',
    expTeacher1:
        'Готувала уроки та підтримувала організовані файли і документацію для кожного учня.',
    educInstitution:
        'Національний технічний університет України «Київський політехнічний інститут»',
    educProgram: 'Комп\'ютерна інженерія програмного забезпечення',
    educDegreeBachelor: 'Бакалавр',
    langUkrainian: 'Українська',
    langEnglish: 'Англійська',
  };
}
