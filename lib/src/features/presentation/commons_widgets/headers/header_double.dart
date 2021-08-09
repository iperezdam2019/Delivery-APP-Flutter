import 'package:flutter/material.dart';
// Colors
import 'package:delivery/src/colors/colors.dart';
// Commons Widgets
import 'package:delivery/src/features/presentation/commons_widgets/headers/header_text.dart';

Widget headerDoubleText(
    {String textHeader = '',
    String textAction = '',
    required VoidCallback func}) {
  return Container(
    child: Row(
      children: [
        headerText(text: textHeader, fontSize: 20.0),
        Spacer(),
        GestureDetector(
          onTap: func,
          child: headerText(
              text: textAction,
              color: orange,
              fontWeight: FontWeight.w500,
              fontSize: 15.0),
        )
      ],
    ),
  );
}
