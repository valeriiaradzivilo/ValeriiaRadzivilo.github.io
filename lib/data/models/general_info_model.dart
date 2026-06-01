import 'package:flutter/material.dart';

class GeneralInfoModel {
  final String name;
  final String title;
  final String location;
  final List<SkillGroup> skillGroups;
  final List<ExperienceEntry> experiences;
  final EducationEntry education;
  final List<LanguageEntry> languages;
  final ContactInfo contact;

  const GeneralInfoModel({
    required this.name,
    required this.title,
    required this.location,
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
  final String title;
  final String place;
  final String period;
  final List<String> description;
  final Color color;

  const ExperienceEntry({
    required this.title,
    required this.place,
    required this.period,
    required this.description,
    required this.color,
  });
}

class EducationEntry {
  final String program;
  final String degree;
  final String period;

  const EducationEntry({
    required this.program,
    required this.degree,
    required this.period,
  });
}

class LanguageEntry {
  final String language;
  final String levelKey;
  final double progress;

  const LanguageEntry({
    required this.language,
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
