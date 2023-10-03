import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_chat_app/Helper/Authentication/AuthenticationRepo.dart';
import 'package:new_chat_app/Views/Screens/Android/Login/LoginPage.dart';
import 'package:new_chat_app/Views/Screens/Android/On_Boarding/OnBoarding.dart';
import 'package:new_chat_app/Views/Screens/Android/Pages/HomePage.dart';
import 'package:new_chat_app/Views/Screens/Android/Pages/VotingPage.dart';
import 'package:new_chat_app/Views/Screens/Android/Pages/WelcomePage.dart';
import 'package:new_chat_app/Views/Screens/Android/SignUp/SignUpPage.dart';
import 'package:new_chat_app/Views/Screens/Android/Splash_Scereen/Splash_Scereen.dart';

import 'Constants/ThemeData.dart';
import 'Views/Screens/Android/forget_password/fortget_password_mail/ForgetPassWordMail_Page.dart';
import 'Views/Screens/Android/forget_password/fortget_password_otp/OtpPage.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((value) => Get.put(AuthenticationRepo()));
  runApp(
    const Gautam(),
  );
}

class Gautam extends StatelessWidget {
  const Gautam({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.circularReveal,
      transitionDuration: const Duration(
        milliseconds: 500,
      ),
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      getPages: [
        GetPage(
          name: '/',
          page: () => Splash_Screen(),
        ),
        GetPage(
          name: '/OnBoarding',
          page: () => const OnBoarding(),
        ),
        GetPage(
          name: '/WelcomePage',
          page: () => const WelcomePage(),
        ),
        GetPage(
          name: '/HomePage',
          page: () => const HomePage(),
        ),
        GetPage(
          name: '/LoginPage',
          page: () => const LoginPage(),
        ),
        GetPage(
          name: '/SignUpPage',
          page: () => const SignUpPage(),
        ),
        GetPage(
          name: '/ForgetPassWordMail_Page',
          page: () => const ForgetPassWordMail_Page(),
        ),
        GetPage(
          name: '/OtpPage',
          page: () => const OtpPage(),
        ),
        GetPage(
          name: '/VotingPage',
          page: () => const VotingPage(),
        ),
      ],
    );
  }
}
