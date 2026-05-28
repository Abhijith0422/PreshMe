import 'package:flutter/material.dart';

class ChatSearchBar extends StatelessWidget {
  const ChatSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,

      padding: const EdgeInsets.symmetric(
        horizontal: 18,
      ),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),

        color: Colors.white.withValues(alpha: 0.05),

        border: Border.all(
          color: Colors.white.withValues(alpha: 0.08),
        ),
      ),

      child: Row(
        children: [
          Icon(
            Icons.search_rounded,
            color:
                Colors.white.withValues(alpha: 0.5),
          ),

          const SizedBox(width: 14),

          Text(
            "Search conversations",

            style: TextStyle(
              color:
                  Colors.white.withValues(alpha: 0.5),

              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}