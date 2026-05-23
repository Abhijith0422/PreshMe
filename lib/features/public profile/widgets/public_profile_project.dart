import 'package:flutter/material.dart';

import '../../../core/widgets/glass_container.dart';

class PublicProfileProjects extends StatelessWidget {
  const PublicProfileProjects({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.start,

      children: [
        sectionTitle("FEATURED PROJECTS"),

        const SizedBox(height: 18),

        projectCard(
          "PreshMe",
          "Skill sharing collaboration app",
        ),

        const SizedBox(height: 16),

        projectCard(
          "AI Expense Tracker",
          "Smart finance management app",
        ),
      ],
    );
  }
}