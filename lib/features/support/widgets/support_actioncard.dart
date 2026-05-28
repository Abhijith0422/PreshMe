import 'package:flutter/material.dart';
import 'package:preshme/core/widgets/glass_container.dart';

Widget supportActionCard({
  required IconData icon,
  required String title,
  required String subtitle,
}) {
  return GlassContainer(
    child: Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),

          decoration: BoxDecoration(
            shape: BoxShape.circle,

            color:
                const Color(0xFF9B5CFF)
                    .withValues(alpha: 0.12),
          ),

          child: Icon(
            icon,
            color: const Color(0xFF9B5CFF),
            size: 28,
          ),
        ),

        const SizedBox(height: 18),

        Text(
          title,

          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),

        const SizedBox(height: 8),

        Text(
          subtitle,

          textAlign: TextAlign.center,

          style: TextStyle(
            color:
                Colors.white.withValues(alpha: 0.6),
          ),
        ),
      ],
    ),
  );
}