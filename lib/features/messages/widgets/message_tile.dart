import 'dart:ui';

import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  final String name;
  final String role;
  final String message;
  final String time;
  final int unreadCount;
  final bool isOnline;

  const ChatTile({
    super.key,
    required this.name,
    required this.role,
    required this.message,
    required this.time,
    required this.unreadCount,
    required this.isOnline,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(28),

      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 20,
          sigmaY: 20,
        ),

        child: Container(
          padding: const EdgeInsets.all(18),

          decoration: BoxDecoration(
            borderRadius:
                BorderRadius.circular(28),

            color:
                Colors.white.withValues(alpha: 0.05),

            border: Border.all(
              color:
                  Colors.white.withValues(alpha: 0.08),
            ),
          ),

          child: Row(
            children: [
              Stack(
                children: [
                  const CircleAvatar(
                    radius: 34,

                    backgroundImage: AssetImage(
                      "assets/homepage/avatar.png",
                    ),
                  ),

                  if (isOnline)
                    Positioned(
                      right: 2,
                      bottom: 2,

                      child: Container(
                        width: 16,
                        height: 16,

                        decoration: BoxDecoration(
                          shape: BoxShape.circle,

                          color:
                              const Color(
                                0xFF4DFF88,
                              ),

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

              const SizedBox(width: 18),

              Expanded(
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,

                  children: [
                    Row(
                      children: [
                        Text(
                          name,

                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight:
                                FontWeight.w700,
                          ),
                        ),

                        const SizedBox(width: 10),

                        Text(
                          role,

                          style: TextStyle(
                            color: Colors.white
                                .withValues(alpha: 0.45),

                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 10),

                    Text(
                      message,

                      style: TextStyle(
                        color: Colors.white
                            .withValues(alpha: 0.7),

                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),

              Column(
                crossAxisAlignment:
                    CrossAxisAlignment.end,

                children: [
                  Text(
                    time,

                    style: TextStyle(
                      color:
                          Colors.white
                              .withValues(alpha:
                                0.45,
                              ),
                    ),
                  ),

                  const SizedBox(height: 12),

                  if (unreadCount > 0)
                    Container(
                      width: 24,
                      height: 24,

                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF9B5CFF),
                      ),

                      child: Center(
                        child: Text(
                          unreadCount.toString(),

                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight:
                                FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}