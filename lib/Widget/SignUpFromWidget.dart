import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_chat_app/Controller/SignUpController.dart';

import '../Constants/image_path.dart';

class SignUpFromWidget extends StatelessWidget {
  const SignUpFromWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final formKey = GlobalKey<FormState>();
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(

              textInputAction: TextInputAction.next,
              controller: controller.fullName,
              decoration: InputDecoration(
                fillColor: Colors.black,
                prefixIcon: const Icon(CupertinoIcons.person),
                label: const Text(
                  "Full Name",
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                // hintText: "Email",
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade400),
                ),
                //
                suffixIconColor: Colors.white,
                filled: true,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: controller.email,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                fillColor: Colors.black,
                prefixIcon: const Icon(Icons.email),
                label: const Text(
                  "Email",
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                // hintText: "Email",
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade400),
                ),
                //
                suffixIconColor: Colors.white,
                filled: true,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: controller.phone,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                fillColor: Colors.black,
                prefixIcon: const Icon(CupertinoIcons.phone),
                label: const Text(
                  "Number",
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                // hintText: "Email",
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade400),
                ),
                //
                suffixIconColor: Colors.white,
                filled: true,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              obscureText: true,
              controller: controller.password,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                focusColor: Colors.black,
                fillColor: Colors.black,
                prefixIcon: const Icon(Icons.fingerprint),
                label: const Text(
                  "Password",
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                // hintText: "Email",
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade400),
                ),
                //
                suffixIconColor: Colors.white,
                filled: true,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                if (formKey.currentState!.validate()) {
                  SignUpController.instance.registerUser(
                      controller.email.text.trim(),
                      controller.password.text.trim());
                } else {
                  Get.defaultDialog(
                    title: "SignUp Failed",

                  );
                }
              },

              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.black,
                ),
                child: Text(
                  "sign up".toUpperCase(),
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Align(
              alignment: Alignment.center,
              child: Text(
                "OR",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
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
          ],
        ),
      ),
    );
  }
}
