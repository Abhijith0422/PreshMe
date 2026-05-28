

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../core/widgets/glass_container.dart';
import '../widgets/social_card.dart';
import '../widgets/support_actioncard.dart';
import '../widgets/support_header.dart';
import '../widgets/support_section_tile.dart';
import '../widgets/support_tile.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({super.key});

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
            physics:
                const BouncingScrollPhysics(),

            padding:
                const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),

            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,

              children: [
                /// HEADER
                const SupportHeader(),

                const SizedBox(height: 30),

                /// QUICK ACTIONS
                const SectionTitle(
                  title: "QUICK ACTIONS",
                ),

                const SizedBox(height: 18),

                Row(
                  children: [
                    Expanded(
                      child: supportActionCard(
                        icon:
                            Icons.help_outline_rounded,

                        title: "FAQ",

                        subtitle:
                            "Common answers",
                      ),
                    ),

                    const SizedBox(width: 16),

                    Expanded(
                      child: supportActionCard(
                        icon:
                            Icons.bug_report_rounded,

                        title: "Report Bug",

                        subtitle:
                            "Found an issue?",
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 30),

                /// SUPPORT OPTIONS
                const SectionTitle(
                  title: "SUPPORT OPTIONS",
                ),

                const SizedBox(height: 18),

                supportTile(
                  icon:
                      Icons.chat_bubble_outline_rounded,

                  title: "Live Chat",

                  subtitle:
                      "Talk with support team",
                ),

                const SizedBox(height: 16),

                supportTile(
                  icon:
                      Icons.email_outlined,

                  title: "Email Support",

                  subtitle:
                      "support@preshme.app",
                ),

                const SizedBox(height: 16),

                supportTile(
                  icon:
                      Icons.feedback_outlined,

                  title: "Send Feedback",

                  subtitle:
                      "Help improve PreshMe",
                ),

                const SizedBox(height: 30),

                /// COMMUNITY
                const SectionTitle(
                  title: "COMMUNITY",
                ),

                const SizedBox(height: 18),

                Row(
                  children: [
                    Expanded(
                      child: socialCard(
                        icon:
                            FontAwesomeIcons.discord,

                        title: "Discord",
                      ),
                    ),

                    const SizedBox(width: 16),

                    Expanded(
                      child: socialCard(
                        icon:
                            FontAwesomeIcons.github,

                        title: "GitHub",
                      ),
                    ),

                    const SizedBox(width: 16),

                    Expanded(
                      child: socialCard(
                        icon:
                            FontAwesomeIcons.instagram,

                        title: "Instagram",
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 30),

                /// APP INFO
                GlassContainer(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.info_outline_rounded,
                            color: Color(
                              0xFF9B5CFF,
                            ),
                          ),

                          const SizedBox(width: 14),

                          const Text(
                            "App Version",

                            style: TextStyle(
                              color:
                                  Colors.white,

                              fontSize: 16,
                              fontWeight:
                                  FontWeight
                                      .w600,
                            ),
                          ),

                          const Spacer(),

                          Text(
                            "v1.0.0",

                            style: TextStyle(
                              color: Colors
                                  .white
                                  .withValues(
                                    alpha: 0.6,
                                  ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 24),

                      Text(
                        "PreshMe is built for creators, developers and collaborators to connect and build futuristic projects together.",

                        style: TextStyle(
                          color: Colors.white
                              .withValues(alpha:0.7),

                          height: 1.7,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}