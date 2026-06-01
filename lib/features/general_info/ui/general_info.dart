import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/general_info_cubit.dart';
import '../data/models/general_info_model.dart';
import '../widgets/about_card.dart';
import '../widgets/contact_card.dart';
import '../widgets/education_card.dart';
import '../widgets/experience_card.dart';
import '../widgets/languages_card.dart';
import '../widgets/profile_card.dart';
import '../widgets/skills_card.dart';

class GeneralInfo extends StatelessWidget {
  const GeneralInfo({super.key});

  static List<Widget> _buildCards(GeneralInfoModel info) => [
        ProfileCard(
          name: info.name,
          title: info.title,
          location: info.location,
        ),
        AboutCard(about: info.about),
        SkillsCard(skills: info.skills),
        ...info.experiences.map((e) => ExperienceCard(experience: e)),
        EducationCard(education: info.education),
        LanguagesCard(languages: info.languages),
        ContactCard(contact: info.contact),
      ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GeneralInfoCubit, GeneralInfoModel>(
      builder: (context, info) {
        final cards = _buildCards(info);
        final width = MediaQuery.sizeOf(context).width;
        final columns = width < 640 ? 1 : width < 1100 ? 2 : 3;

        return Scaffold(
          backgroundColor: const Color(0xFFC4A46B),
          body: SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(20, 28, 20, 40),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: columns,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 24,
                  childAspectRatio: 0.75,
                ),
                itemCount: cards.length,
                itemBuilder: (_, index) =>
                    Align(alignment: Alignment.topCenter, child: cards[index]),
              ),
            ),
          ),
        );
      },
    );
  }
}
