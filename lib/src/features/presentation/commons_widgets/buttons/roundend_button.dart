import 'package:delivery/src/features/presentation/commons_widgets/headers/header_text.dart';
import 'package:flutter/material.dart';

const shape = StadiumBorder();

Widget createButton(
    {BuildContext? context,
    double width = 350.0,
    double height = 45.0,
    double radius = 20.0,
    ImageProvider<Object>? icon,
    bool isWithIcon = false,
    String labelButton = "",
    Color labelButtonColor = Colors.white,
    double labelFontSize = 15.0,
    required Color buttonColor,
    OutlinedBorder shape = shape,
    required VoidCallback func}) {
  return Container(
    width: width,
    height: height,
    margin: EdgeInsets.only(top: 20.0),
    child: isWithIcon
        ? _raisedButtonWithIcon(radius, icon!, labelButton, labelButtonColor,
            labelFontSize, buttonColor, shape, func)
        : _raisedButtonNotIcon(radius, labelButton, labelButtonColor,
            labelFontSize, buttonColor, shape, func),
  );
}

Widget _raisedButtonWithIcon(
    double radius,
    ImageProvider<Object> icon,
    String labelButton,
    Color labelButtonColor,
    double labelFontSize,
    Color color,
    OutlinedBorder shape,
    VoidCallback func) {
  return ElevatedButton(
    onPressed: func,
    style:
        ElevatedButton.styleFrom(shape: shape, primary: color, elevation: 0.5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(
          image: icon,
          width: 35.0,
          height: 35.0,
        ),
        Container(
            margin: EdgeInsets.only(left: 10.0),
            child: headerText(
                text: labelButton,
                color: labelButtonColor,
                fontSize: labelFontSize,
                fontWeight: FontWeight.bold)),
      ],
    ),
  );
}

Widget _raisedButtonNotIcon(
    double radius,
    String labelButton,
    Color labelButtonColor,
    double labelFontSize,
    Color color,
    OutlinedBorder shape,
    VoidCallback func) {
  return ElevatedButton(
    onPressed: func,
    style:
        ElevatedButton.styleFrom(shape: shape, primary: color, elevation: 0.5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            margin: EdgeInsets.only(left: 10.0),
            child: headerText(
                text: labelButton,
                color: labelButtonColor,
                fontSize: labelFontSize,
                fontWeight: FontWeight.bold)),
      ],
    ),
  );
}
