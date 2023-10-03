import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_chat_app/Widget/SignUpHeaderWidget.dart';
import '../../../../Widget/SignUpFromWidget.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16),
            child: const Column(
              children: <Widget>[
                SignUpHeaderWidget(),
                SignUpFromWidget()
              ],
            ),
          ),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}


