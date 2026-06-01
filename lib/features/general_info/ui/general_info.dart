import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/data/models/general_info_model.dart';
import 'package:portfolio/features/general_info/widgets/contact_card.dart';
import 'package:portfolio/features/general_info/widgets/education_card.dart';
import 'package:portfolio/features/general_info/widgets/experience_card.dart';
import 'package:portfolio/features/general_info/widgets/languages_card.dart';
import 'package:portfolio/features/general_info/widgets/skills_card.dart';

import '../../../shared/widgets/language_switcher_button.dart';
import '../bloc/general_info_cubit.dart';
import '../widgets/about_card.dart';
import '../widgets/profile_card.dart';

class GeneralInfo extends StatelessWidget {
  const GeneralInfo({super.key});

  static const _colGap = 20.0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GeneralInfoCubit, GeneralInfoModel>(
      builder: (context, info) {
        final viewW = MediaQuery.sizeOf(context).width;

        return SafeArea(
          child: SingleChildScrollView(
            child: Container(
              width: MediaQuery.sizeOf(context).width,

              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/images/pin_board.jpg'),
                  fit: BoxFit.cover,
                ),
                border: Border.all(color: Colors.brown, width: _colGap),
              ),
              child: Padding(
                padding: const EdgeInsets.all(_colGap),
                child: Column(
                  children: [
                    const Align(
                      alignment: Alignment.centerRight,
                      child: LanguageSwitcherButton(),
                    ),
                    const SizedBox(height: _colGap),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: _colGap,
                      children: [
                        ProfileCard(
                          name: info.name,
                          titleKey: info.titleKey,
                          locationKey: info.locationKey,
                        ),

                        SizedBox(width: viewW / 3, child: const AboutCard()),
                        EducationCard(education: info.education),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: _colGap,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              SkillsCard(skillGroups: info.skillGroups),
                              LanguagesCard(languages: info.languages),
                            ],
                          ),
                        ),

                        SizedBox(
                          width: viewW * 0.6,
                          child: ExperienceCard(experiences: info.experiences),
                        ),
                      ],
                    ),

                    SizedBox(
                      width: viewW * 0.6,
                      child: ContactCard(contact: info.contact),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
