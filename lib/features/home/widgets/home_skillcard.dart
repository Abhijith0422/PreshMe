import 'dart:ui';
import 'package:flutter/material.dart';

class HomeSkillcard extends StatelessWidget {
  final String name;
  final String role;
  final String image;
  final List<String> skills;
  final String lookingFor;

  const HomeSkillcard({
    super.key,
    required this.name,
    required this.role,
    required this.image,
    required this.skills,
    required this.lookingFor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      height: 560,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(36),
        border: Border.all(color: Colors.yellow),

        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,

          colors: [
            Color(0xFF1B1440),
            Color(0xFF0D1020),
            Color(0xFF090B15),
          ],
        ),
      ),

      child: ClipRRect(
        borderRadius: BorderRadius.circular(36),

        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 10,
            sigmaY: 10,
          ),

          child: Padding(
            padding: const EdgeInsets.all(22),

            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,

              children: [
                const SizedBox(height: 20),

                /// AVATAR
                Center(
                  child: CircleAvatar(
                    radius: 90,
                    backgroundImage: AssetImage(image),
                  ),
                ),

                const SizedBox(height: 30),

                /// NAME
                Text(
                  name,

                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                  ),
                ),

                const SizedBox(height: 8),

                /// ROLE
                Text(
                  role,

                  style: const TextStyle(
                    color: Color(0xFF9B5CFF),
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(height: 24),

                /// SKILLS
                Wrap(
                  spacing: 10,
                  runSpacing: 10,

                  children: skills
                      .map(
                        (skill) => _skillChip(skill),
                      )
                      .toList(),
                ),

                const SizedBox(height: 24),

                const Text(
                  "LOOKING FOR",

                  style: TextStyle(
                    color: Color(0xFF9B5CFF),
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 2,
                  ),
                ),

                const SizedBox(height: 10),

                Text(
                  lookingFor,

                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _skillChip(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 12,
      ),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: Colors.white.withValues(alpha: 0.08),
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
}