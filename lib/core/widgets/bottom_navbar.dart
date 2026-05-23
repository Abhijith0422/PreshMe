import 'dart:ui';
import 'package:flutter/material.dart';

class PreshMeBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const PreshMeBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: 20,
      ),

      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),

        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 20,
            sigmaY: 20,
          ),

          child: Container(
            height: 78,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),

              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,

                colors: [
                  Colors.white.withValues(alpha: 0.10),
                  Colors.white.withValues(alpha: 0.04),
                ],
              ),

              border: Border.all(
                color: Colors.white.withValues(alpha: 0.08),
              ),

              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF9B5CFF)
                      .withValues(alpha: 0.18),

                  blurRadius: 30,
                  spreadRadius: 1,
                ),
              ],
            ),

            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceEvenly,

              children: [
                _navItem(
                  index: 0,
                  icon: Icons.home_rounded,
                  label: "Home",
                ),

                _navItem(
                  index: 1,
                  icon: Icons.chat_bubble_rounded,
                  label: "Messages",
                ),

                _navItem(
                  index: 2,
                  icon: Icons.support_agent_rounded,
                  label: "Support",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _navItem({
    required int index,
    required IconData icon,
    required String label,
  }) {
    final bool isSelected =
        currentIndex == index;

    return GestureDetector(
      onTap: () => onTap(index),

      child: AnimatedContainer(
        duration: const Duration(
          milliseconds: 350,
        ),

        curve: Curves.easeOutExpo,

        padding: EdgeInsets.symmetric(
          horizontal: isSelected ? 22 : 0,
          vertical: 12,
        ),

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),

          gradient: isSelected
              ? LinearGradient(
                  colors: [
                    const Color(0xFF9B5CFF)
                        .withValues(alpha: 0.25),

                    const Color(0xFF4DFF88)
                        .withValues(alpha: 0.15),
                  ],
                )
              : null,

          boxShadow: isSelected
              ? [
                  BoxShadow(
                    color: const Color(0xFF9B5CFF)
                        .withValues(alpha: 0.35),

                    blurRadius: 20,
                    spreadRadius: 1,
                  ),
                ]
              : [],
        ),

        child: Row(
          children: [
            AnimatedScale(
              duration: const Duration(
                milliseconds: 300,
              ),

              scale: isSelected ? 1.15 : 1,

              child: Icon(
                icon,

                color: isSelected
                    ? Colors.white
                    : Colors.white54,

                size: 28,
              ),
            ),

            AnimatedSize(
              duration: const Duration(
                milliseconds: 300,
              ),

              curve: Curves.easeOut,

              child: isSelected
                  ? Padding(
                      padding:
                          const EdgeInsets.only(
                        left: 10,
                      ),

                      child: Text(
                        label,

                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight:
                              FontWeight.w700,

                          fontSize: 16,
                        ),
                      ),
                    )
                  : const SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}