import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:preshme/features/home/widgets/home_skillcard.dart';

class HomeCardswipe extends StatelessWidget {
  final CardSwiperController controller;
   HomeCardswipe({super.key, required this.controller});

final List<HomeSkillcard> cards = [
     const HomeSkillcard(
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
  ),

  const HomeSkillcard(
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
  ),
  ];
  
  

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: CardSwiper(
        controller: controller,
        cardsCount: cards.length,
        cardBuilder: (context, index, percentThresholdX, percentThresholdY) => Center(child: cards[index]),
      ),
    );
  }
}