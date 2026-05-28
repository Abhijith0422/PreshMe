import 'dart:ui';

import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final bool isMe;
  final String message;

  const ChatBubble({
    super.key,
    required this.isMe,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment:
          isMe
              ? Alignment.centerRight
              : Alignment.centerLeft,

      child: Padding(
        padding:
            const EdgeInsets.only(bottom: 18),

        child: ClipRRect(
          borderRadius:
              BorderRadius.circular(24),

          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 20,
              sigmaY: 20,
            ),

            child: Container(
              constraints:
                  const BoxConstraints(
                maxWidth: 280,
              ),

              padding:
                  const EdgeInsets.symmetric(
                horizontal: 18,
                vertical: 16,
              ),

              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(24),

                gradient:
                    isMe
                        ? LinearGradient(
                          colors: [
                            const Color(
                              0xFF9B5CFF,
                            ).withValues(
                              alpha: 0.7,
                            ),

                            const Color(
                              0xFF6E3BFF,
                            ).withValues(
                              alpha: 0.6,
                            ),
                          ],
                        )
                        : null,

                color:
                    isMe
                        ? null
                        : Colors.white
                            .withValues(
                              alpha: 0.05,
                            ),

                border: Border.all(
                  color:
                      Colors.white.withValues(
                        alpha: 0.08,
                      ),
                ),
              ),

              child: Text(
                message,

                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  height: 1.5,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}