import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:new_chat_app/Helper/Authentication/AuthenticationRepo.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  final email = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();
  final phone = TextEditingController();

  void registerUser(String email, String password) {
    AuthenticationRepo.instance.createUserWithEmailAndPassword(email, password);
  }
}
