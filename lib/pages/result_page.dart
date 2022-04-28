import 'package:flutter/material.dart';
import '../bmi_brain.dart';

import '../widgets.dart';
import 'input_page.dart';

class ResultPage extends StatelessWidget {
  int height;
  int weight;

  ResultPage({
    required this.height,
    required this.weight,
  });

  BMIBrain? bmiBrain;

  @override
  Widget build(BuildContext context) {

    bmiBrain = BMIBrain(weight: weight, height: height);

    return Scaffold(
      appBar: AppBar(
        //centerTitle: true,
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Results",
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ReusableCard(
              childCard: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    bmiBrain!.resultBMI(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 26.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    bmiBrain!.calculateBMI().toStringAsFixed(1),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 70.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                  bmiBrain!.advicetBMI(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              color: Color(0xff89c2d9),
            ),
          ),
          NavigatorButton(
            text: "RE-CALCULATE",
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
