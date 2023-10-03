// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_chat_app/Constants/defult_text.dart';
import 'package:new_chat_app/Constants/image_path.dart';
import 'package:new_chat_app/Controller/Splash_ScreenController.dart';
import '../../../../Constants/Size.dart';

class Splash_Screen extends StatelessWidget {
  Splash_Screen({super.key});

  final splashController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    splashController.startAnimation();
    return Scaffold(
      body: Stack(
        children: [
          AnimatedPositioned(
            duration: const Duration(milliseconds: 1600),
            top: splashController.animate.value ? 0 : -30,
            left: splashController.animate.value ? 0 : -30,
            child: Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                color: Colors.yellow,
                shape: BoxShape.circle,
              ),
            ),
          ),

           AnimatedPositioned(
             duration: const Duration(milliseconds: 2000),
             top: splashController.animate.value ? 100 : -80,
             left: splashController.animate.value ? 20 : -80,
             right: 20,
            child: AnimatedOpacity(
              opacity: splashController.animate.value ? 1:0,
              duration: const Duration(milliseconds: 2000),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    appName,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Colors.black),
                  ),
                  Text(
                    appTagLine,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 2400),
            left: 30,
            right: 20,
            bottom: splashController.animate.value ? 300 : -30,
            child: AnimatedOpacity(
              opacity: splashController.animate.value ?1:0,
              duration: const Duration(milliseconds: 2000),
              child: const Image(
                image: AssetImage(splashImage),
                height: 300,
              ),
            ),
          ),
          AnimatedPositioned(
            bottom:  splashController.animate.value ? 10 : 0,
            right: splashController.animate.value ? 20 : 0,
            duration: const Duration(milliseconds: 2400),
            child: AnimatedOpacity(
              opacity: splashController.animate.value ? 1 : 0,
              duration: const Duration(milliseconds: 2000),
              child: Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                  color: Colors.yellow,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
