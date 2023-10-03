import 'dart:async';
import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  static SplashScreenController get find => Get.find();
  RxBool animate = false.obs;

  Future startAnimation() async {
    await Future.delayed(
      const Duration(seconds: 5),
    );
    animate.value = true;
    await Future.delayed(
      const Duration(seconds: 5),
    );
    Get.offNamedUntil('/OnBoarding',(route) => false,);
  }
}
