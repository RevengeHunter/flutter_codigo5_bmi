import 'package:flutter/material.dart';

import '../widgets.dart';
import 'input_page.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                    "Normal",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 26.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "24",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 70.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Debes comer mas frutas y verduras",
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
          NavigatorButton(text: "RE-CALCULATE",onTap: (){
            Navigator.pop(context);
          },),
        ],
      ),
    );
  }
}
