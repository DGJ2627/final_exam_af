import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Constants/defult_text.dart';
import '../Constants/image_path.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(
          image: AssetImage(welcomeImage),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          loginTitle,
          style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          loginSubTitle,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.black),
        ),
        SizedBox(
          height: 30,
        ),
      ],
    );
  }
}