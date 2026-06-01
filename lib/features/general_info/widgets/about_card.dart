import 'package:flutter/material.dart';

import 'wall_picture.dart';

class AboutCard extends StatelessWidget {
  const AboutCard({super.key});

  @override
  Widget build(BuildContext context) {
    return WallPicture(
      rotation: 1.2,
      pinColor: const Color(0xFFED8936),
      photo: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF667EEA), Color(0xFF764BA2)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: const Text(
          'About Me',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      caption: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hi! I'm a passionate Flutter & Dart developer who loves crafting "
            'beautiful, performant cross-platform apps for Android, iOS, and Web.',
            style: wallLabel(15, color: const Color(0xFF4A5568)),
          ),
          const SizedBox(height: 8),
          Text(
            'I enjoy clean architecture, BLoC state management, and turning '
            'design ideas into polished products.',
            style: wallLabel(15, color: const Color(0xFF4A5568)),
          ),
        ],
      ),
    );
  }
}
