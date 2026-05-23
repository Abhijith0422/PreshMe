import 'package:flutter/material.dart';

import '../../../core/widgets/glass_container.dart';

class PublicProfileSkills extends StatelessWidget {
  const PublicProfileSkills({super.key});

  @override
  Widget build(BuildContext context) {
    final skills = [
      "Flutter",
      "Firebase",
      "UI/UX",
      "AI",
      "Riverpod",
      "Figma",
    ];

    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.start,

      children: [
        sectionTitle("SKILLS"),

        const SizedBox(height: 18),

        Wrap(
          spacing: 12,
          runSpacing: 12,

          children: skills
              .map(
                (skill) => skillChip(skill),
              )
              .toList(),
        ),
      ],
    );
  }
}