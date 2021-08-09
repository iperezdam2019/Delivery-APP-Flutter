import 'package:flutter/material.dart';

//Colors
import 'package:delivery/src/colors/colors.dart';

//Commons Widgets
import 'package:delivery/src/features/presentation/commons_widgets/headers/header_text.dart';

class EmptyOrderView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgGreyPage,
      appBar: AppBar(
        elevation: 0.5,
        leading: Text(''),
        backgroundColor: white,
        centerTitle: true,
        title: headerText(
            text: 'My Order',
            color: primaryColor,
            fontSize: 17,
            fontWeight: FontWeight.bold),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                  width: 216,
                  height: 216,
                  color: orange,
                  image: AssetImage('assets/images/shopping-cart.png')),
              Container(
                margin: EdgeInsets.only(top: 30.0),
                child: headerText(
                    text: 'Cesta vacía',
                    color: gris,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.symmetric(horizontal: 50.0),
                child: headerText(
                    text:
                        '¡La buena comida siempre se está cocinando! Adelante, pida algunos platos deliciosos del menú',
                    textAlign: TextAlign.center,
                    color: gris,
                    fontSize: 17,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
      ),
    );
  }
}
