import 'package:flutter/material.dart';

//HeaderText
import 'package:delivery/src/features/presentation/commons_widgets/headers/header_text.dart';

//Colors
import 'package:delivery/src/colors/colors.dart';


Future showAlertDialog(
    BuildContext context,
    ImageProvider<Object> imagePath,
    String headerTitle,
    String headerSubTitle,
    Widget doneButton) async {
await showDialog(
      context: context,
      barrierDismissible: true, //para que pueda pulsar fuera de alerta y salir
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          content: Container(
            height: 320,
            child: Column(
              children: [
                Image(
                  image: imagePath,
                  width: 130,
                  height: 130,
                ),
                Container(
                  margin: EdgeInsets.all(15.0),
                  child: headerText(text: headerTitle, color: primaryColor, fontSize: 20.0),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15.0),
                  child: Text(
                    headerSubTitle,
                    style: TextStyle(
                        color: primaryColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 15.0),
                  ),
                ),
                doneButton
              ],
            ),
          ),
        );
      });
}

