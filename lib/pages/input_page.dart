import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets.dart';

class InputPage extends StatelessWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.blueAccent,
        title: Text("BMI CALCULATOR"),
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
                    childCard: IconContent(textIcon: 'MALE',icon: FontAwesomeIcons.mars,),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                      childCard: IconContent(textIcon: 'FEMALE',icon: FontAwesomeIcons.venus,),
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
                    childCard: Text(
                      "HOLA",
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
                    childCard: Text(
                      "HOLA",
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    childCard: Text(
                      "HOLA",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 80.0,
            width: double.infinity,
            margin: const EdgeInsets.only(
              top: 12,
            ),
            color: const Color(0xff184e77),
            alignment: Alignment.center,
            child: Text(
              "CALCULATE",
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
