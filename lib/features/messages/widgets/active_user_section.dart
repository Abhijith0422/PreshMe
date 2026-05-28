import 'package:flutter/material.dart';

class ActiveUsersSection extends StatelessWidget {
  const ActiveUsersSection({super.key});

  @override
  Widget build(BuildContext context) {
    final users = [
      "Aryan",
      "Sarah",
      "Akhil",
      "Rahul",
      "Aman",
    ];

    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.start,

      children: [
        const Align(
          alignment: Alignment.centerLeft,

          child: Text(
            "ONLINE NOW",

            style: TextStyle(
              color: Color(0xFF9B5CFF),
              letterSpacing: 2,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),

        const SizedBox(height: 18),

        SizedBox(
          height: 90,

          child: ListView.separated(
            scrollDirection: Axis.horizontal,

            itemCount: users.length,

            separatorBuilder:
                (context, index) =>
                    const SizedBox(width: 16),

            itemBuilder: (context, index) {
              return Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,

                          boxShadow: [
                            BoxShadow(
                              color:
                                  const Color(
                                    0xFF4DFF88,
                                  ).withValues(alpha:
                                    0.5,
                                  ),

                              blurRadius: 18,
                            ),
                          ],
                        ),

                        child: const CircleAvatar(
                          radius: 28,

                          backgroundImage:
                              AssetImage(
                            "assets/homepage/avatar.png",
                          ),
                        ),
                      ),

                      Positioned(
                        right: 0,
                        bottom: 0,

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

                  const SizedBox(height: 10),

                  Text(
                    users[index],

                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight:
                          FontWeight.w600,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}