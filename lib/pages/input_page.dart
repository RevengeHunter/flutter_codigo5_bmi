import 'package:flutter/material.dart';
import 'package:flutter_codigo5_bmi/pages/result_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets.dart';

const kTapSelectedColor = Color(0xff184e77); //Colors.red;
const kCardColor = Color(0xff168aad);
const kPrimaryColor = Color(0xffd9ed92);
enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectOption = Gender.male;
  int height = 165;
  int age = 23;
  int weight = 64;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.blueAccent,
        title: const Text("BMI CALCULATOR"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          //Primera Fila
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onTap: () {
                      selectOption = Gender.male;
                      setState(() {});
                    },
                    color: selectOption == Gender.male
                        ? kTapSelectedColor
                        : kCardColor,
                    childCard: IconContent(
                      textIcon: 'MALE',
                      icon: FontAwesomeIcons.mars,
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onTap: () {
                      selectOption = Gender.female;
                      setState(() {});
                    },
                    color: selectOption == Gender.female
                        ? kTapSelectedColor
                        : kCardColor,
                    childCard: IconContent(
                      textIcon: 'FEMALE',
                      icon: FontAwesomeIcons.venus,
                    ),
                  ),
                ),
              ],
            ),
          ),
          //Segunda Fila
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: kCardColor,
                    childCard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "HEIGHT",
                          style: TextStyle(
                            fontSize: 38.0,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              height.toString(),
                              style: const TextStyle(
                                fontSize: 36,
                              ),
                            ),
                            const Text(
                              "cm",
                            ),
                          ],
                        ),
                        Slider(
                          value: height.toDouble(),
                          max: 200,
                          min: 0,
                          onChanged: (double valueSlider) {
                            height = valueSlider.round();
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          //Tercera Fila
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: kCardColor,
                    childCard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "WEIGHT",
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                        Text(
                          weight.toString(),
                          style: const TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InputIconButtonContent(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                if (weight > 0) weight--;
                                setState(() {});
                              },
                            ),
                            const SizedBox(
                              width: 20.0,
                            ),
                            InputIconButtonContent(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                if (weight < 200) weight++;
                                setState(() {});
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: kCardColor,
                    childCard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "AGE",
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                        Text(
                          age.toString(),
                          style: const TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InputIconButtonContent(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                if (age > 0) age--;
                                setState(() {});
                              },
                            ),
                            const SizedBox(
                              width: 20.0,
                            ),
                            InputIconButtonContent(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                if (age < 150) age++;
                                setState(() {});
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          NavigatorButton(
            text: "CALCULATE",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultPage(
                    height: height,
                    weight: weight,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
