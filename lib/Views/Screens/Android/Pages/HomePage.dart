import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_chat_app/Constants/Variable.dart';
import 'package:new_chat_app/Constants/defult_text.dart';
import 'package:new_chat_app/Constants/image_path.dart';

import '../../../../Model/DetailsModel.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(appName),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "Add Information your Voter Card ID: ",
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ),
          ),
          Image.asset(votingImage),
          const SizedBox(
            height: 20,
          ),
          Form(
            key: formKey,
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    controller: voterNameController,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Enter your Age";
                      }

                      return null;
                    },
                    onSaved: (val) {
                      voterName = val!;
                    },
                    decoration: InputDecoration(
                      fillColor: Colors.black,
                      prefixIcon: const Icon(CupertinoIcons.person),
                      label: const Text(
                        "Enter Name",
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400),
                      ),
                      // fillColor: Colors.black,
                      suffixIconColor: Colors.white,
                      filled: true,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    controller: yourAgeController,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Enter your Age";
                      }

                      return null;
                    },
                    onSaved: (val) {
                      yourAge = int.parse(val!);
                    },
                    decoration: InputDecoration(
                      fillColor: Colors.black,
                      prefixIcon: const Icon(CupertinoIcons.person),
                      label: const Text(
                        "Age",
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade400),
                      ),
                      // fillColor: Colors.black,
                      suffixIconColor: Colors.white,
                      filled: true,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      if (yourAge >= 18) {
                        DetailsModel information =
                            DetailsModel(name: voterName, age: yourAge);
                        Get.offNamedUntil(
                          '/VotingPage',
                          (route) => false,
                          arguments: information,
                        );
                        voterNameController.clear();
                        yourAgeController.clear();
                      } else {
                        Get.defaultDialog(
                          titleStyle: TextStyle(),
                          backgroundColor: Colors.black,
                          title: "You are not Eligible for voting",
                          onCancel: () {
                            voterNameController.clear();
                            yourAgeController.clear();
                          },
                          onConfirm: () {
                            Get.back();
                            voterNameController.clear();
                            yourAgeController.clear();
                          },
                        );
                      }
                    }
                  },
                  child: Container(
                    height: 50,
                    width: 200,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Text(
                      "Submit",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
