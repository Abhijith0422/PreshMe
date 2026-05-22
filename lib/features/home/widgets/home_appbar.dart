import 'package:flutter/material.dart';

class PreshMeAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const PreshMeAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      scrolledUnderElevation: 0,

      titleSpacing: 20,

      title: RichText(
        text: const TextSpan(
          children: [
            TextSpan(
              text: 'Presh',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w800,
                color: Colors.white,
                letterSpacing: -1,
              ),
            ),

            TextSpan(
              text: 'Me',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w800,
                color: Color(0xFF9B5CFF),
                letterSpacing: -1,
              ),
            ),
          ],
        ),
      ),

      actions: [
        /// Notification Button
        Container(
          margin: const EdgeInsets.only(right: 12),

          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white.withValues(alpha: 0.08),

            border: Border.all(
              color: Colors.white.withValues(alpha: 0.08),
            ),
          ),

          child: IconButton(
            onPressed: () {},

            icon: const Icon(
              Icons.notifications_none_rounded,
              color: Colors.white,
              size: 28,
            ),
          ),
        ),

        /// Profile Avatar
        Padding(
          padding: const EdgeInsets.only(right: 20),

          child: Stack(
            children: [
              const CircleAvatar(
                radius: 24,
                backgroundColor: Color(0xFF9B5CFF),

                child: CircleAvatar(
                  radius: 22,

                  backgroundImage: AssetImage('assets/homepage/avatar.png')
                ),
              ),

              Positioned(
                bottom: 0,
                right: 0,

                child: Container(
                  width: 14,
                  height: 14,

                  decoration: BoxDecoration(
                    color: const Color(0xFF4DFF88),
                    shape: BoxShape.circle,

                    border: Border.all(
                      color: const Color(0xFF070B1A),
                      width: 2,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}