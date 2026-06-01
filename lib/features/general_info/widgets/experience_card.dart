import 'package:flutter/material.dart';

import '../../../../shared/theme/text_styles.dart';
import '../../../data/models/general_info_model.dart';
import 'wall_picture.dart';

class ExperienceCard extends StatelessWidget {
  final List<ExperienceEntry> experiences;

  const ExperienceCard({super.key, required this.experiences});

  static const _headerColor = Color(0xFF6C63FF);

  @override
  Widget build(BuildContext context) {
    return WallPicture(
      rotation: -0.5,
      pinColor: _headerColor,
      photo: Container(
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(color: _headerColor),
        child: Text('Experience', style: AppTextStyles.cardHeading(24)),
      ),
      caption: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: experiences.map((e) => _ExperienceRow(entry: e)).toList(),
      ),
    );
  }
}

class _ExperienceRow extends StatelessWidget {
  final ExperienceEntry entry;

  const _ExperienceRow({required this.entry});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  color: entry.color,
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  entry.title,
                  style: AppTextStyles.label(15, weight: FontWeight.bold),
                ),
              ),
            ],
          ),
          const SizedBox(height: 2),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (entry.place.isNotEmpty)
                  Text(
                    '${entry.place}  ·  ${entry.period}',
                    style: AppTextStyles.label(
                      13,
                      color: const Color(0xFF718096),
                    ),
                  )
                else
                  Text(
                    entry.period,
                    style: AppTextStyles.label(
                      13,
                      color: const Color(0xFF718096),
                    ),
                  ),
                const SizedBox(height: 4),
                ...entry.description.map(
                  (line) => Padding(
                    padding: const EdgeInsets.only(bottom: 2),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '• ',
                          style: AppTextStyles.label(
                            13,
                            color: const Color(0xFF9B9B9B),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            line,
                            style: AppTextStyles.label(
                              13,
                              color: const Color(0xFF4A5568),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
