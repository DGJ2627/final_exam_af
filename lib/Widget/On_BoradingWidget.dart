import 'package:flutter/material.dart';

import '../Model/OnBoardingModel.dart';

class On_BoradingWidget extends StatelessWidget {
  const On_BoradingWidget({
    required this.model,
    super.key,
  });
  final OnBoardingModel model;
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: model.bgColor,
      height: double.infinity,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: [
          const SizedBox(height: 10,),
          Image(image: AssetImage(model.image),),
          const SizedBox(height: 20,),
          const SizedBox(height: 40,),
          Text(model.counter),
        ],
      ),
    );
  }
}
