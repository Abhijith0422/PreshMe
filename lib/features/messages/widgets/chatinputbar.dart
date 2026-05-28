import 'package:flutter/material.dart';

class ChatInputBar extends StatelessWidget {
  const ChatInputBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: 20,
        top: 10,
      ),

      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 62,

              padding:
                  const EdgeInsets.symmetric(
                horizontal: 18,
              ),

              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(24),

                color:
                    Colors.white.withValues(
                      alpha: 0.05,
                    ),

                border: Border.all(
                  color:
                      Colors.white.withValues(
                        alpha: 0.08,
                      ),
                ),
              ),

              child: Row(
                children: [
                  Icon(
                    Icons.add_rounded,

                    color: Colors.white
                        .withValues(
                          alpha: 0.5,
                        ),
                  ),

                  const SizedBox(width: 14),

                  Text(
                    "Type a message",

                    style: TextStyle(
                      color: Colors.white
                          .withValues(alpha:0.45),

                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(width: 16),

          Container(
            width: 62,
            height: 62,

            decoration: BoxDecoration(
              shape: BoxShape.circle,

              gradient: LinearGradient(
                colors: [
                  const Color(0xFF9B5CFF)
                      .withValues(alpha: 0.8),

                  const Color(0xFF6E3BFF)
                      .withValues(alpha: 0.7),
                ],
              ),

              boxShadow: [
                BoxShadow(
                  color:
                      const Color(0xFF9B5CFF)
                          .withValues(alpha: 0.45),

                  blurRadius: 25,
                  spreadRadius: 1,
                ),
              ],
            ),

            child: const Icon(
              Icons.send_rounded,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}