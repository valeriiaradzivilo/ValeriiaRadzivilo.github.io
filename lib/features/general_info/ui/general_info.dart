import 'package:flutter/material.dart';

import '../widgets/about_card.dart';
import '../widgets/contact_card.dart';
import '../widgets/education_card.dart';
import '../widgets/experience_card.dart';
import '../widgets/languages_card.dart';
import '../widgets/profile_card.dart';
import '../widgets/skills_card.dart';

class GeneralInfo extends StatelessWidget {
  const GeneralInfo({super.key});

  static const _cards = <Widget>[
    ProfileCard(),
    AboutCard(),
    SkillsCard(),
    ExperienceCard(
      title: 'Flutter Developer',
      place: 'Company',
      period: '2022 – Present',
      description:
          'Developing cross-platform apps with Flutter & Dart. Firebase backend, BLoC state management, go_router navigation, REST API integrations.',
      color: Color(0xFF6C63FF),
      rotation: 1.5,
    ),
    ExperienceCard(
      title: 'Junior Mobile Developer',
      place: 'Startup',
      period: '2020 – 2022',
      description:
          'Built and maintained Android & iOS applications, contributed to UI redesigns and third-party API integrations.',
      color: Color(0xFF48BB78),
      rotation: -1.2,
    ),
    EducationCard(),
    LanguagesCard(),
    ContactCard(),
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final columns = width < 640 ? 1 : width < 1100 ? 2 : 3;

    return Scaffold(
      backgroundColor: const Color(0xFFC4A46B),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(20, 28, 20, 40),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 24),
                child: Text(
                  '★  Portfolio Wall  ★',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: columns,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 24,
                  childAspectRatio: 0.75,
                ),
                itemCount: _cards.length,
                itemBuilder: (_, index) => Align(
                  alignment: Alignment.topCenter,
                  child: _cards[index],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
