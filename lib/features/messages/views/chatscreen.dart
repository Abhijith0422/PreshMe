

import 'package:flutter/material.dart';


import '../widgets/chat_bubble.dart';
import '../widgets/chat_topbar.dart';
import '../widgets/chatinputbar.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final messages = [
      {
        "isMe": false,
        "message":
            "Yo bro, the UI looks insane 🔥",
      },

      {
        "isMe": true,
        "message":
            "Thanks 😭 still improving animations",
      },

      {
        "isMe": false,
        "message":
            "We should build something together",
      },

      {
        "isMe": true,
        "message":
            "Hackathon team maybe? 🚀",
      },
    ];

    return Container(
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          center: Alignment.topLeft,
          radius: 1.5,

          colors: [
            Color(0xFF24124D),
            Color(0xFF0B1023),
            Color(0xFF050816),
          ],
        ),
      ),

      child: Scaffold(
        backgroundColor: Colors.transparent,

        body: SafeArea(
          child: Column(
            children: [
              /// TOP BAR
              const ChatTopBar(),

              /// MESSAGES
              Expanded(
                child: ListView.builder(
                  physics:
                      const BouncingScrollPhysics(),

                  padding:
                      const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),

                  itemCount: messages.length,

                  itemBuilder: (
                    context,
                    index,
                  ) {
                    final message =
                        messages[index];

                    return ChatBubble(
                      isMe:
                          message["isMe"]
                              as bool,

                      message:
                          message["message"]
                              as String,
                    );
                  },
                ),
              ),

              /// INPUT BAR
              const ChatInputBar(),
            ],
          ),
        ),
      ),
    );
  }
}