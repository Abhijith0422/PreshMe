import 'package:flutter/material.dart';

import '../../../core/widgets/glass_container.dart';

class PublicProfileStats extends StatelessWidget {
  const PublicProfileStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: statCard(
            "12",
            "Projects",
          ),
        ),

        const SizedBox(width: 14),

        Expanded(
          child: statCard(
            "4",
            "Hackathons",
          ),
        ),

        const SizedBox(width: 14),

        Expanded(
          child: statCard(
            "2",
            "Internships",
          ),
        ),
      ],
    );
  }
}