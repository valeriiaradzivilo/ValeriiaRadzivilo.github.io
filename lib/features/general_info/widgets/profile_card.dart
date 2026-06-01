import 'package:flutter/material.dart';

import '../../../../shared/theme/text_styles.dart';
import 'wall_picture.dart';

class ProfileCard extends StatelessWidget {
  final String name;
  final String title;
  final String location;

  const ProfileCard({
    super.key,
    required this.name,
    required this.title,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: WallPicture(
        rotation: -1.5,
        pinColor: const Color(0xFF9B59B6),
        photo: Image.asset(
          'assets/images/my_photo.jpg',
          height: 100,
          width: double.infinity,
          fit: BoxFit.fitHeight,
          errorBuilder: (_, _, _) => Container(
            height: 100,
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
              name,
              textAlign: TextAlign.center,
              style: AppTextStyles.label(22, weight: FontWeight.bold),
            ),
            const SizedBox(height: 2),
            Text(
              '$title  •  $location',
              textAlign: TextAlign.center,
              style: AppTextStyles.label(15, color: const Color(0xFF718096)),
            ),
          ],
        ),
      ),
    );
  }
}
