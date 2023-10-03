import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../Controller/OnBoardingController.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});




  @override
  Widget build(BuildContext context) {
    final Obcontroller = OnBoardingController();
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            onPageChangeCallback: Obcontroller.onPageChangeCallback,
            liquidController: Obcontroller.pageController,
            pages: Obcontroller.pages,
            slideIconWidget: const Icon(Icons.arrow_back_ios),
            enableSideReveal: true,
          ),
          Positioned(
            bottom: 80,
            child: OutlinedButton(
              onPressed: () {
                // int nextPage = pageController.currentPage + 1;
                // pageController.animateToPage(page: nextPage);

                Obcontroller.nextPage();

              },
              style: ElevatedButton.styleFrom(
                side: const BorderSide(color: Colors.black26),
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20),
              ),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black,
                ),
                child: const Icon(Icons.arrow_forward_ios,color: Colors.white),
              ),
            ),
          ),
          Positioned(
            top: 40,
            right: 20,
            child: TextButton(
              onPressed: () => Obcontroller.skip(),
              child: const Text("Skip",style: TextStyle(fontSize: 20,color: Colors.black),),
            ),
          ),
          Obx(
            ()=> Positioned(
              bottom: 10,
              child: AnimatedSmoothIndicator(
                activeIndex: Obcontroller.currentPage.value,
                count: 3,
                effect:
                    const WormEffect(dotHeight: 10, activeDotColor: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }




}
