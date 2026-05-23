import 'package:flutter/material.dart';

import '../../../core/widgets/glass_container.dart';

class PublicProfileAbout extends StatelessWidget {
  const PublicProfileAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return GlassContainer(
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,

        children: [
          sectionTitle("ABOUT"),

          const SizedBox(height: 18),

          Text(
            "Building futuristic Flutter apps and immersive user experiences with modern animations and scalable architectures.",

            style: TextStyle(
              color:
                  Colors.white.withValues(alpha: 0.75),

              height: 1.7,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}