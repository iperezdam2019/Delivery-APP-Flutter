import 'package:flutter/material.dart';

// Tamaño de la pantalla
double screenWidth = 0.0;
double screenHigth = 0.0;

//Extensión publica
extension ScreenSize on double {
  double getScreenWidth({BuildContext? context, double multiplier = 0.0}) {
    var width = MediaQuery.of(context!).size.width;
    if (multiplier != 0.0) {
      width = width * multiplier;
    }
    return width;
  }

  double getScreenHeight({BuildContext? context, double multiplier = 0.0}) {
    var height = MediaQuery.of(context!).size.height;
    if (multiplier != 0.0) {
      height = height * multiplier;
    }
    return height;
  }
}
