import 'package:flutter/material.dart';
import '../widgets/active_user_section.dart';
import '../widgets/message_appbar.dart';
import '../widgets/message_searchbar.dart';
import '../widgets/message_tile.dart';
import 'chatscreen.dart';

class MessageChatScreen extends StatelessWidget {
  const MessageChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
          child: Padding(
            padding:
                const EdgeInsets.symmetric(
              horizontal: 20,
            ),

            child: Column(
              children: [
                const SizedBox(height: 10),

                const ChatAppBar(),

                const SizedBox(height: 30),

                const ChatSearchBar(),

                const SizedBox(height: 30),

                const ActiveUsersSection(),

                const SizedBox(height: 30),

                Expanded(
                  child: GestureDetector(
                    onTap: () {
  Navigator.of(context).push(
    PageRouteBuilder(
      transitionDuration:
          const Duration(
        milliseconds: 700,
      ),

      reverseTransitionDuration:
          const Duration(
        milliseconds: 500,
      ),

      pageBuilder: (
        context,
        animation,
        secondaryAnimation,
      ) {
        return const ChatScreen();
      },

      transitionsBuilder: (
        context,
        animation,
        secondaryAnimation,
        child,
      ) {
        final fadeAnimation =
            Tween<double>(
              begin: 0,
              end: 1,
            ).animate(
              CurvedAnimation(
                parent: animation,
                curve:
                    Curves.easeIn,
              ),
            );

        final slideAnimation =
            Tween<Offset>(
              begin: const Offset(
                0.08,
                0,
              ),

              end: Offset.zero,
            ).animate(
              CurvedAnimation(
                parent: animation,
                curve:
                    Curves.easeOutExpo,
              ),
            );

        final scaleAnimation =
            Tween<double>(
              begin: 0.96,
              end: 1,
            ).animate(
              CurvedAnimation(
                parent: animation,
                curve:
                    Curves.easeOutExpo,
              ),
            );

        return FadeTransition(
          opacity: fadeAnimation,

          child: SlideTransition(
            position: slideAnimation,

            child: ScaleTransition(
              scale: scaleAnimation,

              child: child,
            ),
          ),
        );
      },
    ),
  );
},
                    child: ListView(
                      
                      physics:
                          const BouncingScrollPhysics(),
                    
                      children: const [
                        ChatTile(
                          name: "Aryan",
                          role: "AI Engineer",
                    
                          message:
                              "Let's build this 🚀",
                    
                          time: "2m",
                    
                          unreadCount: 2,
                    
                          isOnline: true,
                        ),
                    
                        SizedBox(height: 18),
                    
                        ChatTile(
                          name: "Sarah",
                          role: "UI/UX Designer",
                    
                          message:
                              "UI looks insane 🔥",
                    
                          time: "5m",
                    
                          unreadCount: 1,
                    
                          isOnline: true,
                        ),
                    
                        SizedBox(height: 18),
                    
                        ChatTile(
                          name: "Akhil",
                          role: "Backend Developer",
                    
                          message:
                              "Sent the GitHub repo",
                    
                          time: "12m",
                    
                          unreadCount: 0,
                    
                          isOnline: false,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}