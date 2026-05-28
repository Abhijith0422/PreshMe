import 'package:flutter/material.dart';

import '../../../core/widgets/glass_container.dart';

Widget supportTile({
  required IconData icon,
  required String title,
  required String subtitle,
}) {
  return GlassContainer(
    child: Row(
      children: [
        Container(
          padding: const EdgeInsets.all(14),

          decoration: BoxDecoration(
            shape: BoxShape.circle,

            color:
                const Color(0xFF9B5CFF)
                    .withValues(alpha: 0.12),
          ),

          child: Icon(
            icon,
            color: const Color(0xFF9B5CFF),
          ),
        ),

        const SizedBox(width: 18),

        Expanded(
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start,

            children: [
              Text(
                title,

                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight:
                      FontWeight.w700,
                ),
              ),

              const SizedBox(height: 6),

              Text(
                subtitle,

                style: TextStyle(
                  color: Colors.white
                      .withValues(alpha: 0.6),
                ),
              ),
            ],
          ),
        ),

        Icon(
          Icons.arrow_forward_ios_rounded,

          size: 18,

          color:
              Colors.white.withValues(alpha: 0.4),
        ),
      ],
    ),
  );
}
