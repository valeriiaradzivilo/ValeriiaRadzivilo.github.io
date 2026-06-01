import 'package:flutter/material.dart';

import 'wall_picture.dart';

class SkillsCard extends StatelessWidget {
  const SkillsCard({super.key});

  static const _skills = [
    ('Flutter', Color(0xFF54C5F8)),
    ('Dart', Color(0xFF00B4AB)),
    ('Firebase', Color(0xFFFFA000)),
    ('BLoC / Cubit', Color(0xFF6C63FF)),
    ('REST API', Color(0xFF48BB78)),
    ('go_router', Color(0xFF4299E1)),
    ('Git', Color(0xFFE53E3E)),
    ('Android', Color(0xFF5CCC68)),
    ('iOS', Color(0xFF667EEA)),
    ('Web', Color(0xFFED8936)),
    ('Hive / SQLite', Color(0xFF9F7AEA)),
    ('Firebase Auth', Color(0xFFF6AD55)),
  ];

  @override
  Widget build(BuildContext context) {
    return WallPicture(
      rotation: -0.7,
      pinColor: const Color(0xFF54C5F8),
      photo: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        decoration: const BoxDecoration(color: Color(0xFF2D3748)),
        child: const Text(
          'Tech Skills',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      caption: Padding(
        padding: const EdgeInsets.only(top: 4),
        child: Wrap(
          spacing: 8,
          runSpacing: 8,
          children: _skills.map(_buildChip).toList(),
        ),
      ),
    );
  }

  static Widget _buildChip((String, Color) skill) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: skill.$2.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: skill.$2, width: 1.5),
      ),
      child: Text(
        skill.$1,
        style: TextStyle(
          fontSize: 14,
          color: skill.$2,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
