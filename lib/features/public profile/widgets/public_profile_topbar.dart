import 'package:flutter/material.dart';

class PublicProfileTopbar extends StatelessWidget {
  const PublicProfileTopbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          MainAxisAlignment.spaceBetween,

      children: [
        const Text(
          "Portfolio",

          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w800,
          ),
        ),

        Container(
          padding: const EdgeInsets.all(12),

          decoration: BoxDecoration(
            shape: BoxShape.circle,

            color: Colors.white.withValues(alpha: 0.06),

            border: Border.all(
              color:
                  Colors.white.withValues(alpha: 0.08),
            ),
          ),

          child: const Icon(
            Icons.more_vert_rounded,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
