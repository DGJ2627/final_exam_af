import 'package:get/get.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';
import 'package:new_chat_app/Views/Screens/Android/Pages/WelcomePage.dart';
import '../Constants/colors.dart';
import '../Constants/defult_text.dart';
import '../Constants/image_path.dart';
import '../Model/OnBoardingModel.dart';
import '../Widget/On_BoradingWidget.dart';

class OnBoardingController extends GetxController {
  final pageController = LiquidController();
  RxInt currentPage = 0.obs;

  final pages = [
    On_BoradingWidget(
      model: OnBoardingModel(
        image: onBoardingImage1,
        text: onBoardingText1,
        counter: onBoardingCounter1,
        bgColor: onBoardingColor1,
        size: 20,
      ),
    ),
    On_BoradingWidget(
      model: OnBoardingModel(
        image: onBoardingImage3,
        text: onBoardingText3,
        counter: onBoardingCounter2,
        bgColor: onBoardingColor2,
        size: 20,
      ),
    ),
    On_BoradingWidget(
      model: OnBoardingModel(
        image: onBoardingImage2,
        text: onBoardingText2,
        counter: onBoardingCounter3,
        bgColor: onBoardingColor3,
        size: 20,
      ),
    ),
  ];

  void onPageChangeCallback(int activePageIndex) {
    currentPage.value = activePageIndex;


  }

  skip() => Get.toNamed('/WelcomePage',);

  nextPage(){
    int nextPage = pageController.currentPage + 1;
    pageController.animateToPage(page: nextPage);

  }

}