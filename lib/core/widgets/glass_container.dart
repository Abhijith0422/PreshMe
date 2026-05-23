
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GlassContainer extends StatelessWidget {
  final Widget child;

  const GlassContainer({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),

      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 20,
          sigmaY: 20,
        ),

        child: Container(
          width: double.infinity,

          padding: const EdgeInsets.all(22),

          decoration: BoxDecoration(
            borderRadius:
                BorderRadius.circular(30),

            color:
                Colors.white.withValues(alpha: 0.05),

            border: Border.all(
              color:
                  Colors.white.withValues(alpha: 0.08),
            ),
          ),

          child: child,
        ),
      ),
    );
  }
}

Widget sectionTitle(String text) {
  return Text(
    text,

    style: const TextStyle(
      color: Color(0xFF9B5CFF),
      fontWeight: FontWeight.w700,
      letterSpacing: 2,
      fontSize: 13,
    ),
  );
}

Widget skillChip(String text) {
  return Container(
    padding: const EdgeInsets.symmetric(
      horizontal: 18,
      vertical: 12,
    ),

    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(18),

      color: Colors.white.withValues(alpha: 0.06),
    ),

    child: Text(
      text,

      style: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w700,
      ),
    ),
  );
}

Widget statCard(
  String value,
  String label,
) {
  return GlassContainer(
    child: Column(
      children: [
        Text(
          value,

          style: const TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.w800,
          ),
        ),

        const SizedBox(height: 8),

        Text(
          label,

          style: TextStyle(
            color:
                Colors.white.withValues(alpha: 0.65),
                fontSize: 12
          ),
        ),
      ],
    ),
  );
}

Widget socialButton(FaIconData icon) {
  return Container(
    padding: const EdgeInsets.all(16),

    decoration: BoxDecoration(
      shape: BoxShape.circle,

      color: Colors.white.withValues(alpha: 0.06),

      border: Border.all(
        color: Colors.white.withValues(alpha: 0.08),
      ),
    ),

    child: FaIcon(
      icon,
      color: Colors.white,
      size: 22,
    ),
  );
}

Widget projectCard(
  String title,
  String subtitle,
) {
  return GlassContainer(
    child: Column(
      crossAxisAlignment:
          CrossAxisAlignment.start,

      children: [
        Text(
          title,

          style: const TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w700,
          ),
        ),

        const SizedBox(height: 10),

        Text(
          subtitle,

          style: TextStyle(
            color:
                Colors.white.withValues(alpha: 0.7),
          ),
        ),

        const SizedBox(height: 20),

        Row(
          children: [
            Expanded(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(
                  vertical: 14,
                ),

                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(18),

                  color:
                      const Color(0xFF9B5CFF)
                          .withValues(alpha: 0.16),
                ),

                child: const Center(
                  child: Text(
                    "View Project",

                    style: TextStyle(
                      color: Colors.white,
                      fontWeight:
                          FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget collaborationTile(String text) {
  return Container(
    width: double.infinity,

    padding: const EdgeInsets.symmetric(
      horizontal: 18,
      vertical: 16,
    ),

    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),

      color: Colors.white.withValues(alpha: 0.05),
    ),

    child: Row(
      children: [
        const Icon(
          Icons.rocket_launch_rounded,
          color: Color(0xFF4DFF88),
        ),

        const SizedBox(width: 14),

        Text(
          text,

          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    ),
  );
}