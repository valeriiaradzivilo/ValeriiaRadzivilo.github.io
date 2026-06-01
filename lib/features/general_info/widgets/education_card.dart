import 'package:flutter/material.dart';

import 'wall_picture.dart';

class EducationCard extends StatelessWidget {
  const EducationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return WallPicture(
      rotation: 1.8,
      pinColor: const Color(0xFFE53E3E),
      photo: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFFF6B6B), Color(0xFFFFE66D)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: const Text(
          'Education',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      caption: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Computer Science',
            style: wallLabel(16, weight: FontWeight.bold),
          ),
          const SizedBox(height: 2),
          Text(
            "Bachelor's Degree",
            style: wallLabel(14, color: const Color(0xFF718096)),
          ),
          const SizedBox(height: 2),
          Text(
            '2018 – 2022',
            style: wallLabel(13, color: const Color(0xFF9B59B6)),
          ),
        ],
      ),
    );
  }
}
