import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/data/models/general_info_model.dart';

import '../bloc/general_info_cubit.dart';
import '../widgets/about_card.dart';
import '../widgets/contact_card.dart';
import '../widgets/education_card.dart';
import '../widgets/experience_card.dart';
import '../widgets/languages_card.dart';
import '../widgets/profile_card.dart';
import '../widgets/skills_card.dart';

class GeneralInfo extends StatelessWidget {
  const GeneralInfo({super.key});

  static const _spacing = 20.0;

  static List<Widget> _buildCards(GeneralInfoModel info) => [
        ProfileCard(
          name: info.name,
          title: info.title,
          location: info.location,
        ),
        AboutCard(about: info.about),
        SkillsCard(skills: info.skills),
        ExperienceCard(experiences: info.experiences),
        EducationCard(education: info.education),
        LanguagesCard(languages: info.languages),
        ContactCard(contact: info.contact),
      ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GeneralInfoCubit, GeneralInfoModel>(
      builder: (context, info) {
        final cards = _buildCards(info);
        final totalWidth = MediaQuery.sizeOf(context).width;
        final columns = totalWidth < 640 ? 1 : totalWidth < 1100 ? 2 : 3;
        // Each card gets an equal share of the available width.
        // The outer SingleChildScrollView padding takes 40px (20 each side),
        // and spacing between columns accounts for (columns - 1) gaps.
        final cardWidth =
            (totalWidth - 40 - _spacing * (columns - 1)) / columns;

        return SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(20, 28, 20, 40),
            child: Wrap(
              spacing: _spacing,
              runSpacing: _spacing,
              children: cards
                  .map((card) => SizedBox(width: cardWidth, child: card))
                  .toList(),
            ),
          ),
        );
      },
    );
  }
}
