import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../../../../Widget/LoginFooterWidget.dart';
import '../../../../Widget/LoginFormWidget.dart';
import '../../../../Widget/LoginHedarWidget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LoginHeaderWidget(),
              LoginFormWidget(),
              LoginFooterWidget(),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}


