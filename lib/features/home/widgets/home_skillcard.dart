import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:preshme/features/public%20profile/views/public_profilepage.dart';

class HomeSkillcard extends StatelessWidget {
  final String name;
  final String role;
  final String image;
  final List<String> skills;
  final String lookingFor;

  final bool isFlipped;
  final VoidCallback onTap;

  const HomeSkillcard({
    super.key,
    required this.name,
    required this.role,
    required this.image,
    required this.skills,
    required this.lookingFor,
    required this.isFlipped,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,

      child: TweenAnimationBuilder(
        duration: const Duration(
          milliseconds: 3000,
        ),

        tween: Tween<double>(
          begin: 0,
          end: isFlipped ? pi : 0,
        ),

        curve: Curves.elasticOut,

        builder: (
          context,
          double angle,
          child,
        ) {
          final isFront = angle < pi / 2;

          return Transform(
            alignment: Alignment.center,

            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.0015)
              ..rotateY(2*angle),

            child: isFront
                ? _frontCard()
                : Transform(
                    alignment: Alignment.center,

                    transform:
                        Matrix4.identity()
                          ..rotateY(2*pi),

                    child: _backCard(context),
                  ),
          );
        },
      ),
    );
  }

  /// FRONT CARD
  Widget _frontCard() {
    return Container(
      width: 350,
      height: 560,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(36),

        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,

          colors: [
            Color(0xFF1B1440),
            Color(0xFF0D1020),
            Color(0xFF090B15),
          ],
        ),

        border: Border.all(
          color:  Colors.yellow,
          width: 1.2,
        ),

        boxShadow: [
          BoxShadow(
            color:
                const Color(0xFF9B5CFF)
                    .withValues(alpha: 0.25),

            blurRadius: 30,
            spreadRadius: 2,
          ),
        ],
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
                const SizedBox(height: 18),

                /// AVATAR
                Center(
                  child: CircleAvatar(
                    radius: 90,
                    backgroundImage:
                        AssetImage(image),
                  ),
                ),

                const SizedBox(height: 30),

                /// NAME
                Text(
                  name,

                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight:
                        FontWeight.w800,
                  ),
                ),

                const SizedBox(height: 8),

                /// ROLE
                Text(
                  role,

                  style: const TextStyle(
                    color: Color(0xFF9B5CFF),
                    fontSize: 20,
                    fontWeight:
                        FontWeight.w600,
                  ),
                ),

                const SizedBox(height: 24),

                /// SKILLS
                Wrap(
                  spacing: 10,
                  runSpacing: 10,

                  children: skills
                      .map(
                        (skill) =>
                            _skillChip(skill),
                      )
                      .toList(),
                ),

                const SizedBox(height: 24),

                const Text(
                  "LOOKING FOR",

                  style: TextStyle(
                    color: Color(0xFF9B5CFF),
                    fontSize: 13,
                    fontWeight:
                        FontWeight.w700,

                    letterSpacing: 2,
                  ),
                ),

                const SizedBox(height: 10),

                Text(
                  lookingFor,

                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight:
                        FontWeight.w500,
                  ),
                ),

               
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// BACK CARD
  Widget _backCard(BuildContext context) {
    return Container(
      width: 340,
      height: 560,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(36),

        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,

          colors: [
            Color(0xFF1B1440),
            Color(0xFF0D1020),
            Color(0xFF090B15),
          ],
        ),

        border: Border.all(
          color: Colors.yellow,
          width: 1.2,
        ),
      ),

      child: Padding(
        padding: const EdgeInsets.all(24),

        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,

          children: [
            const SizedBox(height: 15),

            const Text(
              "PROJECTS",

              style: TextStyle(
                color: Color(0xFF9B5CFF),
                fontWeight:
                    FontWeight.bold,

                letterSpacing: 2,
              ),
            ),

            const SizedBox(height: 15),

            _projectTile(
              "AI Startup Finder",
              "Flutter • Firebase • AI",
            ),

            const SizedBox(height: 12),

            _projectTile(
              "Expense Tracker",
              "Flutter • UI/UX",
            ),

            const SizedBox(height: 15),

            const Text(
              "EXPERIENCE",

              style: TextStyle(
                color: Color(0xFF9B5CFF),
                fontWeight:
                    FontWeight.bold,

                letterSpacing: 2,
              ),
            ),

            const SizedBox(height: 15),

            _infoChip("2 Hackathons"),

            const SizedBox(height: 12),

            _infoChip("Flutter Freelancer"),
            Spacer(),
            Center(
              child: TextButton(onPressed: (){
      Navigator.of(context).push(
        PageRouteBuilder(
          transitionDuration:
              const Duration(
            milliseconds: 700,
          ),

          reverseTransitionDuration:
              const Duration(
            milliseconds: 500,
          ),

          pageBuilder: (
            context,
            animation,
            secondaryAnimation,
          ) {
            return const PublicProfilepage();
          },

          transitionsBuilder: (
            context,
            animation,
            secondaryAnimation,
            child,
          ) {
            final fadeAnimation =
                Tween<double>(
                  begin: 0,
                  end: 1,
                ).animate(
                  CurvedAnimation(
                    parent: animation,
                    curve:
                        Curves.easeOutExpo,
                  ),
                );

            final slideAnimation =
                Tween<Offset>(
                  begin: const Offset(
                    0,
                    0.08,
                  ),

                  end: Offset.zero,
                ).animate(
                  CurvedAnimation(
                    parent: animation,
                    curve:
                        Curves.easeOutExpo,
                  ),
                );

            final scaleAnimation =
                Tween<double>(
                  begin: 0.96,
                  end: 1,
                ).animate(
                  CurvedAnimation(
                    parent: animation,
                    curve:
                        Curves.easeOutExpo,
                  ),
                );

            return FadeTransition(
              opacity: fadeAnimation,

              child: SlideTransition(
                position: slideAnimation,

                child: ScaleTransition(
                  scale: scaleAnimation,

                  child: child,
                ),
              ),
            );
          },
        ),
      );
    }, child: Text('View Profile',style: TextStyle(color: Colors.yellow),)),
            )
          ],
        ),
      ),
    );
  }

  Widget _skillChip(String text) {
    return Container(
      padding:
          const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 12,
      ),

      decoration: BoxDecoration(
        borderRadius:
            BorderRadius.circular(18),

        color:
            Colors.white.withValues(alpha: 0.08),
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

  Widget _projectTile(
    String title,
    String tech,
  ) {
    return Container(
      width: double.infinity,

      padding: const EdgeInsets.all(18),

      decoration: BoxDecoration(
        borderRadius:
            BorderRadius.circular(22),

        color:
            Colors.white.withValues(alpha: 0.05),
      ),

      child: Row(
        children: [
          Column(
            crossAxisAlignment:
                CrossAxisAlignment.start,
          
            children: [
              Text(
                title,
          
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight:
                      FontWeight.bold,
                ),
              ),
          
              const SizedBox(height: 8),
          
              Text(
                tech,
          
                style: const TextStyle(
                  color: Colors.white70,
                ),
              ),
            ],
          ),
          Spacer(),
          IconButton(onPressed: (){}, icon: FaIcon(
    FontAwesomeIcons.github,
    color: Colors.white,
  ),)
        ],
      ),
    );
  }

  Widget _infoChip(String text) {
    return Container(
      width: double.infinity,

      padding:
          const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 14,
      ),

      decoration: BoxDecoration(
        borderRadius:
            BorderRadius.circular(18),

        color:
            Colors.white.withValues(alpha: 0.06),
      ),

      child: Text(
        text,

        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}