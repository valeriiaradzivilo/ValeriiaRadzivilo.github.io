import 'package:flutter/material.dart';

class GeneralInfoModel {
  final String name;
  final String titleKey;
  final String locationKey;
  final List<SkillGroup> skillGroups;
  final List<ExperienceEntry> experiences;
  final EducationEntry education;
  final List<LanguageEntry> languages;
  final ContactInfo contact;

  const GeneralInfoModel({
    required this.name,
    required this.titleKey,
    required this.locationKey,
    required this.skillGroups,
    required this.experiences,
    required this.education,
    required this.languages,
    required this.contact,
  });
}

class SkillGroup {
  final String labelKey;
  final List<SkillEntry> skills;
  const SkillGroup({required this.labelKey, required this.skills});
}

class SkillEntry {
  final String name;
  final Color color;
  const SkillEntry(this.name, this.color);
}

class ExperienceEntry {
  final String titleKey;
  final String place;
  final String period;
  final List<String> descriptionKeys;
  final Color color;

  const ExperienceEntry({
    required this.titleKey,
    required this.place,
    required this.period,
    required this.descriptionKeys,
    required this.color,
  });
}

class EducationEntry {
  final String institutionKey;
  final String programKey;
  final String degreeKey;
  final String period;

  const EducationEntry({
    required this.institutionKey,
    required this.programKey,
    required this.degreeKey,
    required this.period,
  });
}

class LanguageEntry {
  final String languageKey;
  final String levelKey;
  final double progress;

  const LanguageEntry({
    required this.languageKey,
    required this.levelKey,
    required this.progress,
  });
}

class ContactInfo {
  final String email;
  final String linkedIn;
  final String gitHub;

  const ContactInfo({
    required this.email,
    required this.linkedIn,
    required this.gitHub,
  });
}
