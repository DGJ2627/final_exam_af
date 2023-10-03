import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_chat_app/Constants/defult_text.dart';
import '../../../../Constants/image_path.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Image(
                image: AssetImage(welcomeImage),
              ),
              Column(
                children: [
                  Text(
                    welcomeTitle,
                    style: GoogleFonts.aBeeZee(fontSize: 40),
                  ),
                  Text(
                    welcomeSubTitle,
                    style: GoogleFonts.aBeeZee(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          shape: const RoundedRectangleBorder(),
                          foregroundColor: Colors.black,
                          side: const BorderSide(
                            color: Colors.black,
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 10)),
                      onPressed: () {
                        Get.toNamed('/LoginPage');
                      },
                      child: Text(loginText.toUpperCase()),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Get.toNamed('/SignUpPage');
                      },
                      style: ElevatedButton.styleFrom(
                        shape: const RoundedRectangleBorder(),
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.black,
                        side: const BorderSide(color: Colors.black),
                        padding: const EdgeInsets.symmetric(vertical: 10),
                      ),
                      child: Text(signupText.toUpperCase()),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
