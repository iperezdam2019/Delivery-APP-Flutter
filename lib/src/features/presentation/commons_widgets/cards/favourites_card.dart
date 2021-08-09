import 'package:delivery/src/features/presentation/commons_widgets/buttons/roundend_button.dart';
import 'package:delivery/src/features/presentation/commons_widgets/headers/header_text.dart';
import 'package:delivery/src/utils/extensions/styles/box_decoration_shadows.dart';
import 'package:flutter/material.dart';

// Colors
import 'package:delivery/src/colors/colors.dart';

Widget favouritesCard({
  BuildContext? context,
  double marginTop = 15.0,
  double marginRight = 0.0,
  double marginBotton = 0.0,
  double marginLeft = 0.0,
  required ImageProvider<Object> image,
  String title = '',
  String subtilte = '',
  String review = '',
  String ratings = '',
  String buttonText = '',
  bool hasActionButton = true,
  bool isFavourite = true,
}) {
  return Container(
    margin: EdgeInsets.only(
      top: marginTop,
      right: marginRight,
      bottom: marginBotton,
      left: marginLeft,
    ),
    padding: EdgeInsets.only(left: 20, top: 20, bottom: 20),
    width: double.infinity,
    decoration: createBoxDecorationWithShadows(),
    child: Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child:
              Image(image: image, width: 90.0, height: 90.0, fit: BoxFit.cover),
        ),
        Container(
          padding: EdgeInsets.only(left: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 7.0),
                      child: headerText(
                          text: title,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 17.0)),
                  SizedBox(
                    width: 25.0,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.bookmark,
                          size: 35.0,
                          color: isFavourite ? rosa : Colors.grey[300]))
                ],
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(bottom: 5.0),
                  child: headerText(
                      text: subtilte,
                      color: gris,
                      fontWeight: FontWeight.w500,
                      fontSize: 13.0)),
                      Row(
                        children: [
                          Icon(Icons.star, color: amarillo, size: 16,),
                          headerText(text: review, fontWeight: FontWeight.w500, fontSize: 13.0),
                          headerText(text: ratings, color: gris, fontWeight: FontWeight.w500, fontSize: 13.0),
                          /*
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            width: 110.0,
                            height: 25.0,
                            child: createButton(buttonColor: orange, labelButton: buttonText, func: (){},labelFontSize: 11.0),
                          )*/
                        ],
                      )
            ],
          ),
        )
      ],
    ),
  );
}
