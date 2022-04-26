import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
          backgroundColor: Color(0xff184e77),
        ),
        scaffoldBackgroundColor: Color(0xff1e6091),
      ),
      home: InputPage(),
    );
  }
}
