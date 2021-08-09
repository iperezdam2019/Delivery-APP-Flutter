import 'package:flutter/material.dart';

// Commons Widgets
import 'package:delivery/src/features/presentation/commons_widgets/headers/header_text.dart';
import 'package:delivery/src/features/presentation/commons_widgets/buttons/roundend_button.dart';

// Colors
import 'package:delivery/src/colors/colors.dart';

Widget popularesCard({
  BuildContext? context,
  double marginTop = 0.0,
  double marginRight = 0.0,
  double marginBotton = 0.0,
  double marginLeft = 10.0,
  required ImageProvider<Object> image,
  String title = '',
  String subtilte = '',
  String review = '',
  String ratings = '',
  String buttonText = '',
  bool hasActionButton = true,
}) {
  return Column(
    children: [
      Container(
        // width: 300.0,
        margin: EdgeInsets.only(
            top: marginTop,
            right: marginRight,
            bottom: marginBotton,
            left: marginLeft),
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child:
                  Image(width: 80, height: 80, fit: BoxFit.cover, image: image),
            ),
            Container(
              padding: EdgeInsets.only(left: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 7.0),
                      child: headerText(
                          text: title, color: Colors.black, fontSize: 17.0)),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(bottom: 5.0),
                    child: Text(
                      subtilte,
                      style: TextStyle(
                          color: gris,
                          fontWeight: FontWeight.w500,
                          fontSize: 13.0),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: amarillo,
                        size: 16.0,
                      ),
                      Text(
                        review,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 5.0),
                        child: Text(
                          ratings,
                          style: TextStyle(
                              color: gris,
                              fontWeight: FontWeight.w500,
                              fontSize: 13.0),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 30.0),
                        width: 110.0,
                        height: 18.0,
                        child: hasActionButton
                            ? createButton(
                                buttonColor: orange,
                                labelButton: buttonText,
                                labelFontSize: 11.0,
                                func: () {})
                            : Text(''),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      )
    ],
  );
}
