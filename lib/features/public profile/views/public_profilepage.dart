

import 'package:flutter/material.dart';
import 'package:preshme/features/public%20profile/widgets/public_profile_about.dart';
import 'package:preshme/features/public%20profile/widgets/public_profile_collab.dart';
import 'package:preshme/features/public%20profile/widgets/public_profile_topbar.dart';

import '../widgets/public_profile_hero.dart';
import '../widgets/public_profile_project.dart';
import '../widgets/public_profile_skills.dart';
import '../widgets/public_profile_stat.dart';

class PublicProfilepage extends StatelessWidget {
  const PublicProfilepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          center: Alignment.topLeft,
          radius: 1.5,

          colors: [
            Color(0xFF24124D),
            Color(0xFF0B1023),
            Color(0xFF050816),
          ],
        ),
      ),

      child: Scaffold(
        backgroundColor: Colors.transparent,

        body: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),

            padding: const EdgeInsets.symmetric(
              horizontal: 22,
              vertical: 12,
            ),

            child: Column(
              children: [
                const PublicProfileTopbar(),

                const SizedBox(height: 30),

                const PublicProfileHero(),

                const SizedBox(height: 30),

                const PublicProfileSkills(),

                const SizedBox(height: 30),

                const PublicProfileStats(),

                const SizedBox(height: 30),

                const PublicProfileAbout(),

                const SizedBox(height: 30),

                const PublicProfileProjects(),

                const SizedBox(height: 30),

                const PublicProfileCollab(),

                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}