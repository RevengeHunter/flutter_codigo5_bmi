import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_codigo5_bmi/pages/result_page.dart';
import 'pages/input_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //Nombre de la aplicacion
      title: "BMI CALCULATOR",
      //Se crea un clon para poder editar
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xff52b69a),
        ),
        scaffoldBackgroundColor: Color(0xff1e6091),
        sliderTheme: SliderThemeData(
          activeTrackColor: kPrimaryColor,
          inactiveTrackColor: Colors.white70,
          thumbColor: Colors.white,
          thumbShape: RoundSliderThumbShape(
            enabledThumbRadius: 15.0,
          ),
          overlayColor: Color(0xff76c893).withOpacity(0.25),
          overlayShape: RoundSliderOverlayShape(
            overlayRadius: 26.0,
          ),
        ),
      ),
      home: InputPage(),
    );
  }
}
