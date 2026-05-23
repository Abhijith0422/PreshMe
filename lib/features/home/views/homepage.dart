import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:preshme/features/home/widgets/home_appbar.dart';
import 'package:preshme/features/home/widgets/home_cardswipe.dart';
import 'package:preshme/features/home/widgets/home_swipebutton.dart';


class HomePage extends StatelessWidget {
  final ValueNotifier<int> navIndex =
    ValueNotifier(0);
    final WidgetRef ref;
   HomePage({super.key, required this.ref});
 
  @override
  Widget build(BuildContext context) {
    final controller = CardSwiperController();
    return SafeArea(top: false,
      child: Scaffold(
        appBar: PreshMeAppBar(),
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
             SizedBox(
              height: 553,
                child: HomeCardswipe(
                  controller: controller,
                  ref: ref,
                ),
              ),
            HomeSwipebutton(
              controller: controller,
              ref: ref,
            )
          ],
        ) ,
      
       
      ));
  }
}