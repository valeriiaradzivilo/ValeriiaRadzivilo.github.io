import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../shared/theme/text_styles.dart';
import '../../../data/models/general_info_model.dart';
import 'wall_picture.dart';

class ContactCard extends StatelessWidget {
  final ContactInfo contact;

  const ContactCard({super.key, required this.contact});

  Future<void> _open(String url) async {
    await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
  }

  @override
  Widget build(BuildContext context) {
    return WallPicture(
      rotation: 0.9,
      pinColor: const Color(0xFF4299E1),
      photo: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF2193B0), Color(0xFF6DD5ED)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Text('Find Me', style: AppTextStyles.cardHeading(28)),
      ),
      caption: Column(
        children: [
          _LinkButton(
            label: contact.email,
            icon: Icons.email_outlined,
            color: const Color(0xFFE53E3E),
            onTap: () => _open('mailto:${contact.email}'),
          ),
          const SizedBox(height: 8),
          _LinkButton(
            label: 'LinkedIn',
            icon: Icons.person_outline,
            color: const Color(0xFF0077B5),
            onTap: () => _open(contact.linkedIn),
          ),
          const SizedBox(height: 8),
          _LinkButton(
            label: 'GitHub',
            icon: Icons.code,
            color: const Color(0xFF2D3748),
            onTap: () => _open(contact.gitHub),
          ),
        ],
      ),
    );
  }
}

class _LinkButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final Color color;
  final VoidCallback onTap;

  const _LinkButton({
    required this.label,
    required this.icon,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: color.withValues(alpha: 0.08),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: color.withValues(alpha: 0.4)),
        ),
        child: Row(
          children: [
            Icon(icon, color: color, size: 18),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                label,
                style: AppTextStyles.label(
                  15,
                  color: color,
                  weight: FontWeight.w600,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
