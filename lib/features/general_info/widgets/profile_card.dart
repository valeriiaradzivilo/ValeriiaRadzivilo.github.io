import 'package:flutter/material.dart';

import 'wall_picture.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return WallPicture(
      rotation: -1.5,
      pinColor: const Color(0xFF9B59B6),
      photo: Image.asset(
        'assets/images/my_photo.jpg',
        height: 280,
        width: double.infinity,
        fit: BoxFit.cover,
        errorBuilder: (_, _, _) => Container(
          height: 280,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF667EEA), Color(0xFF764BA2)],
            ),
          ),
          alignment: Alignment.center,
          child: Icon(
            Icons.person,
            size: 80,
            color: Colors.white.withValues(alpha: 0.7),
          ),
        ),
      ),
      caption: Column(
        children: [
          Text(
            'Valeriia Radzivilo',
            textAlign: TextAlign.center,
            style: wallLabel(22, weight: FontWeight.bold),
          ),
          const SizedBox(height: 2),
          Text(
            'Flutter Developer  •  Ukraine',
            textAlign: TextAlign.center,
            style: wallLabel(15, color: const Color(0xFF718096)),
          ),
        ],
      ),
    );
  }
}
