import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Constants/image_path.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Align(
          alignment: Alignment.center,
          child: Text(
            "OR",
            style:
            TextStyle(fontSize: 18, fontWeight: FontWeight.w400,color: Colors.black),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 50,
          width: double.infinity,
          child: OutlinedButton.icon(
            onPressed: () {},
            icon: const Image(
              image: AssetImage(
                googleImage,
              ),
              height: 30,
            ),
            label: const Text(
              "Sign in with Google",
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: () {
            Get.toNamed('/SignUpPage');
          },
          child: const Text.rich(
            TextSpan(
              text: "Don't have Account? ",
              style: TextStyle(fontSize: 16,color: Colors.black),
              children: [
                TextSpan(text: "SignUp",style: TextStyle(color: Colors.blue)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}