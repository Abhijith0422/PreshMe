import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:preshme/features/home/views/homepage.dart';


import '../../features/messages/views/messagechat.dart';
import '../../features/support/views/support_screen.dart';
import '../../shared/providers/nav_provider.dart';
import 'bottom_navbar.dart';

class MainScreen extends ConsumerWidget {
  const MainScreen({super.key});

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    final currentIndex =
        ref.watch(navigationProvider);

    final screens = [
      HomePage(ref: ref,),
      MessageChatScreen(),
      SupportScreen(),
    ];

    return Container(
      decoration: const BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      transform: GradientRotation(1.2),
      colors: [
        Color(0xFF070B1A),
        Color(0xFF0B1023),
        Color(0xFF111827),
      ],
    ),),
      child: Scaffold(
        extendBody: true,
        backgroundColor: Colors.transparent,
        body: IndexedStack(
          index: currentIndex,
          children: screens,
        ),
      
        bottomNavigationBar:
            PreshMeBottomNavBar(
          currentIndex: currentIndex,
      
          onTap: (index) {
            ref
                .read(
                  navigationProvider.notifier,
                )
                .state = index;
          },
        ),
      ),
    );
  }
}