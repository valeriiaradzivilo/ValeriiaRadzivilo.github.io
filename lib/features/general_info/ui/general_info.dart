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

  static const _narrowBreakpoint = 1100.0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GeneralInfoCubit, GeneralInfoModel>(
      builder: (context, info) {
        final viewW = MediaQuery.sizeOf(context).width;
        final isNarrow = viewW < _narrowBreakpoint;
        final fullW = viewW - 2 * _colGap;

        return SafeArea(
          child: SingleChildScrollView(
            child: Container(
              width: viewW,
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
                  spacing: _colGap,
                  children: [
                    const Align(
                      alignment: Alignment.centerRight,
                      child: LanguageSwitcherButton(),
                    ),

                    _ResponsiveRow(
                      isNarrow: isNarrow,
                      spacing: _colGap,
                      children: [
                        ProfileCard(
                          name: info.name,
                          titleKey: info.titleKey,
                          locationKey: info.locationKey,
                        ),
                        SizedBox(
                          width: isNarrow ? fullW : viewW / 3,
                          child: const AboutCard(),
                        ),
                        SizedBox(
                          width: isNarrow ? fullW : null,
                          child: EducationCard(education: info.education),
                        ),
                      ],
                    ),

                    _ResponsiveRow(
                      isNarrow: isNarrow,
                      spacing: _colGap,
                      children: [
                        if (isNarrow) ...[
                          SizedBox(
                            width: fullW,
                            child: SkillsCard(skillGroups: info.skillGroups),
                          ),
                          SizedBox(
                            width: fullW,
                            child: LanguagesCard(languages: info.languages),
                          ),
                        ] else
                          Expanded(
                            child: Column(
                              children: [
                                SkillsCard(skillGroups: info.skillGroups),
                                LanguagesCard(languages: info.languages),
                              ],
                            ),
                          ),
                        SizedBox(
                          width: isNarrow ? fullW : viewW * 0.6,
                          child: ExperienceCard(experiences: info.experiences),
                        ),
                      ],
                    ),

                    SizedBox(
                      width: isNarrow ? fullW : viewW * 0.6,
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

class _ResponsiveRow extends StatelessWidget {
  const _ResponsiveRow({
    required this.isNarrow,
    required this.children,
    this.spacing = 0,
  });

  final bool isNarrow;
  final List<Widget> children;
  final double spacing;

  @override
  Widget build(BuildContext context) {
    if (isNarrow) {
      return Wrap(
        spacing: spacing,
        runSpacing: spacing,
        alignment: WrapAlignment.center,
        children: children,
      );
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: spacing,
      children: children,
    );
  }
}
