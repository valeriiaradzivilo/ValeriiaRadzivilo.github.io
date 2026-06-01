import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/data/models/general_info_model.dart';
import 'package:portfolio/features/general_info/widgets/education_card.dart';
import 'package:portfolio/features/general_info/widgets/experience_card.dart';
import 'package:portfolio/features/general_info/widgets/languages_card.dart';
import 'package:portfolio/features/general_info/widgets/skills_card.dart';

import '../bloc/general_info_cubit.dart';
import '../widgets/about_card.dart';
import '../widgets/profile_card.dart';

class GeneralInfo extends StatelessWidget {
  const GeneralInfo({super.key});

  static const _hPad = 20.0;
  static const _colGap = 20.0;
  static const _rowGap = 16.0;
  static const _overlapY = 10.0;
  static const _pinSpace = 14.0;
  static const _cardAspect = 1.3;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GeneralInfoCubit, GeneralInfoModel>(
      builder: (context, info) {
        final viewW = MediaQuery.sizeOf(context).width;

        return SafeArea(
          child: SingleChildScrollView(
            child: Container(
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height * 1.2,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/images/pin_board.jpg'),
                  fit: BoxFit.cover,
                ),
                border: Border.all(color: Colors.brown, width: 20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: _colGap,
                      children: [
                        ProfileCard(
                          name: info.name,
                          title: info.title,
                          location: info.location,
                        ),

                        SizedBox(width: viewW / 3, child: const AboutCard()),
                        EducationCard(education: info.education),
                      ],
                    ),

                    Expanded(
                      child: Row(
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
                            child: ExperienceCard(
                              experiences: info.experiences,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Positioned(
                    //   top: 104,
                    //   child: SkillsCard(skillGroups: info.skillGroups),
                    // ),
                    // Positioned(
                    //   child: ExperienceCard(experiences: info.experiences),
                    // ),
                    // Positioned(child: EducationCard(education: info.education)),
                    // Positioned(child: LanguagesCard(languages: info.languages)),
                    // Positioned(child: ContactCard(contact: info.contact)),
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
