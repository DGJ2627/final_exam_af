import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_chat_app/Constants/Size.dart';
import 'package:new_chat_app/Constants/image_path.dart';

import '../../../../Constants/Variable.dart';
import '../../../../Helper/Authentication/AuthenticationRepo.dart';
import '../../../../Model/DetailsModel.dart';

class VotingPage extends StatefulWidget {
  const VotingPage({super.key});

  @override
  State<VotingPage> createState() => _VotingPageState();
}

class _VotingPageState extends State<VotingPage> {
  @override
  Widget build(BuildContext context) {
    DetailsModel data = Get.arguments as DetailsModel;
    final controller = Get.put(AuthenticationRepo());
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Container(),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: Text(
                data.name,
                style: const TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.output_rounded,
              ),
              title: const Text(
                "Logout",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              onTap: () {
                controller.logOut();
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text(data.name),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //BJP
              Column(
                children: [
                  Container(
                    height: h * 0.25,
                    width: w * 0.25,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage(bjpLogo),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: h * 0.05,
                        width: w * 0.1,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Text(
                          "$totalVoteBJP",
                          style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                      ),
                      const SizedBox(
                        width: 36,
                      ),
                      (bjpBool == true )
                          ? Center(child: Container())
                          : GestureDetector(
                              onTap: () {
                                setState(() {
                                  totalVoteBJP++;
                                  bjpBool = true;
                                });
                              },
                              child: Container(
                                alignment: Alignment.center,
                                height: h * 0.05,
                                width: w * 0.1,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                ),
                                child: const Text(
                                  "Vote",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
                                ),
                              ),
                            ),
                    ],
                  ),
                ],
              ),

              //Congress
              Column(
                children: [
                  Container(
                    height: h * 0.25,
                    width: w * 0.25,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage(congressLogo),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: h * 0.05,
                        width: w * 0.1,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Text(
                          "$totalVoteCongress",
                          style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                      ),
                      const SizedBox(
                        width: 36,
                      ),
                      (congressBool == true)
                          ? Center(child: Container())
                          : GestureDetector(
                              onTap: () {
                                setState(() {
                                  totalVoteCongress++;
                                  congressBool = true;
                                });
                              },
                              child: Container(
                                alignment: Alignment.center,
                                height: h * 0.05,
                                width: w * 0.1,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                ),
                                child: const Text(
                                  "Vote",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
                                ),
                              ),
                            ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //Aap
              Column(
                children: [
                  Container(
                    height: h * 0.25,
                    width: w * 0.25,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage(aapLogo),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: h * 0.05,
                        width: w * 0.1,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Text(
                          "$totalVoteAAP",
                          style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                      ),
                      const SizedBox(
                        width: 36,
                      ),
                      (aapBool == true)
                          ? Center(child: Container())
                          : GestureDetector(
                        onTap: () {
                          setState(() {
                            totalVoteAAP++;
                            aapBool = true;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: h * 0.05,
                          width: w * 0.1,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          child: const Text(
                            "Vote",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              //Other
              Column(
                children: [
                  Container(
                    height: h * 0.25,
                    width: w * 0.25,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage(otherLogo),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: h * 0.05,
                        width: w * 0.1,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Text(
                          "$totalVoteOther",
                          style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                      ),
                      const SizedBox(
                        width: 36,
                      ),
                      (otherBool == true)
                          ? Center(child: Container())
                          : GestureDetector(
                        onTap: () {
                          setState(() {
                            totalVoteOther++;
                            otherBool = true;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: h * 0.05,
                          width: w * 0.1,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          child: const Text(
                            "Vote",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: () {
      //     Get.defaultDialog(
      //       title: "Choose any one for vote",
      //       actions: [
      //         Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //           children: [
      //             Container(
      //               height: h * 0.05,
      //               width: w * 0.05,
      //               decoration: const BoxDecoration(
      //                 color: Colors.white,
      //               ),
      //               child: Text(""),
      //             ),
      //             Container(
      //               height: h * 0.05,
      //               width: w * 0.05,
      //               decoration: const BoxDecoration(
      //                 color: Colors.white,
      //               ),
      //               child: Text(""),
      //             ),
      //           ],
      //         ),
      //         const SizedBox(
      //           height: 50,
      //         ),
      //         Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //           children: [
      //             Container(
      //               height: h * 0.05,
      //               width: w * 0.05,
      //               decoration: const BoxDecoration(
      //                 color: Colors.white,
      //               ),
      //               child: Text(""),
      //             ),
      //             Container(
      //               height: h * 0.05,
      //               width: w * 0.05,
      //               decoration: const BoxDecoration(
      //                 color: Colors.white,
      //               ),
      //               child: Text(""),
      //             ),
      //           ],
      //         ),
      //       ],
      //     );
      //   },
      //   label: const Text("Voting"),
      // ),
    );
  }
}
