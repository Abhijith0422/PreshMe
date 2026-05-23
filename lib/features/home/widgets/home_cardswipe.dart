import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:preshme/features/home/widgets/home_skillcard.dart';

import '../../../shared/providers/flipped_card_provider.dart';

class HomeCardswipe extends StatelessWidget {
  final CardSwiperController controller;
  final WidgetRef ref;
   HomeCardswipe({super.key, required this.controller, required this.ref});

late final flippedIndex =
    ref.watch(flippedCardProvider);   
late final List<HomeSkillcard> cards = [
     HomeSkillcard(
  name: "Abhi",

  role: "Flutter Developer",

  image: "assets/homepage/avatar.png",

  skills: [
    "Flutter",
    "Firebase",
    "UI/UX",
  ],

  lookingFor:
      "Backend Developer • Collaborator",

  isFlipped: flippedIndex == 0,

  onTap: () {
    ref
        .read(
          flippedCardProvider.notifier,
        )
        .state =
            flippedIndex == 0 ? -1 : 0;
  },
),

  HomeSkillcard(
    name: "Aryan",

    role: "AI Engineer",

    image: "assets/homepage/avatar.png",

    skills: [
      "Python",
      "AI",
      "ML",
    ],

    lookingFor:
        "Frontend Developer • Startup Team",

    isFlipped: flippedIndex == 1,

    onTap: () {
      ref
          .read(
            flippedCardProvider.notifier,
          )
          .state =
              flippedIndex == 1
                  ? -1
                  : 1;
    },
  ),

  ];
  
  

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: CardSwiper(
        controller: controller,
        cardsCount: cards.length,
        isDisabled: flippedIndex != -1,
        cardBuilder: (context, index, percentThresholdX, percentThresholdY) => Center(child: cards[index]),
      ),
    );
  }
}