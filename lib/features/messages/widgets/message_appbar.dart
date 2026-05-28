import 'package:flutter/material.dart';

class ChatAppBar extends StatelessWidget {
  const ChatAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          MainAxisAlignment.spaceBetween,

      children: [
        const Text(
          "Messages",

          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.w800,
          ),
        ),

        Container(
          padding: const EdgeInsets.all(14),

          decoration: BoxDecoration(
            shape: BoxShape.circle,

            color: Colors.white.withValues(alpha: 0.06),

            border: Border.all(
              color:
                  Colors.white.withValues(alpha: 0.08),
            ),
          ),

          child: const Icon(
            Icons.edit_rounded,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}