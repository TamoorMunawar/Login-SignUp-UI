import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'pages/splash_screen.dart';


void  main() {
  runApp( Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "E-Commerece",
      debugShowCheckedModeBanner: false,
      home:  Splash() ,
    );
  }
}