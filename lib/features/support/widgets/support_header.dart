import 'package:flutter/material.dart';

class SupportHeader extends StatelessWidget {
  const SupportHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          MainAxisAlignment.spaceBetween,

      children: [
        const Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,

          children: [
            Text(
              "Support",

              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.w800,
              ),
            ),

            SizedBox(height: 8),

            Text(
              "We're here to help 🚀",

              style: TextStyle(
                color: Colors.white70,
                fontSize: 16,
              ),
            ),
          ],
        ),

        Container(
          padding: const EdgeInsets.all(14),

          decoration: BoxDecoration(
            shape: BoxShape.circle,

            color:
                Colors.white.withValues(alpha: 0.06),

            border: Border.all(
              color:
                  Colors.white.withValues(alpha: 0.08),
            ),
          ),

          child: const Icon(
            Icons.support_agent_rounded,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
