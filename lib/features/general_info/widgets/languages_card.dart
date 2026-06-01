import 'package:flutter/material.dart';

import 'wall_picture.dart';

class LanguagesCard extends StatelessWidget {
  const LanguagesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return WallPicture(
      rotation: -1.0,
      pinColor: const Color(0xFF48BB78),
      photo: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF11998E), Color(0xFF38EF7D)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: const Text(
          'Languages',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      caption: const Column(
        children: [
          _LangRow(language: 'Ukrainian', level: 'Native', progress: 1.0),
          SizedBox(height: 12),
          _LangRow(language: 'English', level: 'Professional', progress: 0.85),
        ],
      ),
    );
  }
}

class _LangRow extends StatelessWidget {
  final String language;
  final String level;
  final double progress;

  const _LangRow({
    required this.language,
    required this.level,
    required this.progress,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(language, style: wallLabel(16, weight: FontWeight.bold)),
            Text(level, style: wallLabel(13, color: const Color(0xFF718096))),
          ],
        ),
        const SizedBox(height: 4),
        ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: LinearProgressIndicator(
            value: progress,
            backgroundColor: const Color(0xFFE2E8F0),
            valueColor:
                const AlwaysStoppedAnimation<Color>(Color(0xFF11998E)),
            minHeight: 6,
          ),
        ),
      ],
    );
  }
}
