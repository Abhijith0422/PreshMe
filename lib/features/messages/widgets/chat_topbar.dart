import 'package:flutter/material.dart';

class ChatTopBar extends StatelessWidget {
  const ChatTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 14,
      ),

      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },

            child: Container(
              padding:
                  const EdgeInsets.all(12),

              decoration: BoxDecoration(
                shape: BoxShape.circle,

                color:
                    Colors.white.withValues(
                      alpha: 0.06,
                    ),

                border: Border.all(
                  color:
                      Colors.white.withValues(
                        alpha: 0.08,
                      ),
                ),
              ),

              child: const Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.white,
                size: 18,
              ),
            ),
          ),

          const SizedBox(width: 18),

          Stack(
            children: [
              const CircleAvatar(
                radius: 26,

                backgroundImage: AssetImage(
                  "assets/homepage/avatar.png",
                ),
              ),

              Positioned(
                right: 0,
                bottom: 0,

                child: Container(
                  width: 14,
                  height: 14,

                  decoration: BoxDecoration(
                    shape: BoxShape.circle,

                    color:
                        const Color(0xFF4DFF88),

                    border: Border.all(
                      color:
                          const Color(
                            0xFF050816,
                          ),

                      width: 2,
                    ),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(width: 16),

          const Expanded(
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,

              children: [
                Text(
                  "Aryan",

                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight:
                        FontWeight.w700,
                  ),
                ),

                SizedBox(height: 4),

                Text(
                  "Online",

                  style: TextStyle(
                    color: Color(0xFF4DFF88),
                    fontWeight:
                        FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),

          Container(
            padding: const EdgeInsets.all(14),

            decoration: BoxDecoration(
              shape: BoxShape.circle,

              color:
                  Colors.white.withValues(
                    alpha: 0.06,
                  ),

              border: Border.all(
                color:
                    Colors.white.withValues(
                      alpha: 0.08,
                    ),
              ),
            ),

            child: const Icon(
              Icons.call_rounded,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}