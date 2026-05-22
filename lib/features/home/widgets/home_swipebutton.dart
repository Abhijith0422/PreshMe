import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';

class HomeSwipebutton extends StatelessWidget {
    final CardSwiperController controller;
  const HomeSwipebutton({super.key, required this.controller});
 
  @override
  Widget build(BuildContext context) {
    
    return Row(
  mainAxisAlignment:
      MainAxisAlignment.spaceEvenly,

  children: [
    GestureDetector(
      onTap: () {
        controller.swipe(
          CardSwiperDirection.left,
        );
      },

      child: actionButton(
        icon: Icons.close,
        glowColor:Colors.redAccent,
         onTap: () {
        controller.swipe(
          CardSwiperDirection.right,
        );
      }
      ),
    ),

    actionButton(
      icon : Icons.favorite,
      glowColor: Color(0xFF4DFF88),
       onTap: () {
        controller.swipe(
          CardSwiperDirection.right,
        );
      }
    ),
  ],
);
  }
}

Widget actionButton({
  required IconData icon,
  required Color glowColor,
  required VoidCallback onTap,
}) {
  return GestureDetector(
    onTap: onTap,

    child: Container(
      width: 78,
      height: 78,

      decoration: BoxDecoration(
        shape: BoxShape.circle,

        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,

          colors: [
            glowColor.withValues(alpha: 0.25),
            glowColor.withValues(alpha: 0.08),
          ],
        ),

        border: Border.all(
          color: glowColor.withValues(alpha: 0.4),
          width: 1.5,
        ),

        boxShadow: [
          BoxShadow(
            color: glowColor.withValues(alpha: 0.45),
            blurRadius: 25,
            spreadRadius: 2,
          ),
        ],
      ),

      child: Icon(
        icon,
        color: glowColor,
        size: 34,
      ),
    ),
  );
}