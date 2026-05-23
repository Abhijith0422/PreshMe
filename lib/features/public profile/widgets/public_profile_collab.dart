import 'package:flutter/material.dart';

import '../../../core/widgets/glass_container.dart';

class PublicProfileCollab extends StatelessWidget {
  const PublicProfileCollab({super.key});

  @override
  Widget build(BuildContext context) {
    return GlassContainer(
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,

        children: [
          sectionTitle("LOOKING FOR"),

          const SizedBox(height: 18),

          collaborationTile(
            "Startup Collaborators",
          ),

          const SizedBox(height: 14),

          collaborationTile(
            "Hackathon Teammates",
          ),

          const SizedBox(height: 14),

          collaborationTile(
            "Backend Developers",
          ),
        ],
      ),
    );
  }
}
