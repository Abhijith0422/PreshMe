import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../core/widgets/glass_container.dart';

class PublicProfileHero extends StatelessWidget {
  const PublicProfileHero({super.key});

  @override
  Widget build(BuildContext context) {
    return GlassContainer(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,

              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF9B5CFF)
                      .withValues(alpha: 0.45),

                  blurRadius: 40,
                  spreadRadius: 4,
                ),
              ],
            ),

            child: const CircleAvatar(
              radius: 68,

              backgroundImage: AssetImage(
                "assets/homepage/avatar.png",
              ),
            ),
          ),

          const SizedBox(height: 22),

          const Text(
            "Abhi Krishna",

            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.w800,
            ),
          ),

          const SizedBox(height: 10),

          const Text(
            "Flutter Developer",

            style: TextStyle(
              color: Color(0xFF9B5CFF),
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),

          const SizedBox(height: 20),

          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 18,
              vertical: 10,
            ),

            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular(30),

              color:
                  const Color(0xFF4DFF88)
                      .withValues(alpha: 0.12),
            ),

            child: const Row(
              mainAxisSize: MainAxisSize.min,

              children: [
                Icon(
                  Icons.circle,
                  size: 10,
                  color: Color(0xFF4DFF88),
                ),

                SizedBox(width: 10),

                Text(
                  "Open to Collaborate",

                  style: TextStyle(
                    color: Color(0xFF4DFF88),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 24),

          Row(
            mainAxisAlignment:
                MainAxisAlignment.center,

            children: [
              socialButton(
                FontAwesomeIcons.github,
              ),

              const SizedBox(width: 16),

              socialButton(
                FontAwesomeIcons.linkedin,
              ),

              const SizedBox(width: 16),

              socialButton(
                FontAwesomeIcons.discord,
              ),
            ],
          ),
        ],
      ),
    );
  }
}