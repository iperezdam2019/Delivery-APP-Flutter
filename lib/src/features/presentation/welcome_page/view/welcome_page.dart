//import 'dart:async';

import 'package:delivery/src/colors/colors.dart';

// Colors
import 'package:flutter/material.dart';
// UI
import 'dart:ui';

// Commons Widgets
import 'package:delivery/src/features/presentation/commons_widgets/headers/header_text.dart';
import 'package:delivery/src/features/presentation/commons_widgets/buttons/roundend_button.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                // Toda la pantalla
                fit: BoxFit.cover,
                image: AssetImage('assets/images/welcome_image.jpg')),
          ),
          // Hacer la imagen mas oscura
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
            child: Container(
              color: Colors.black.withOpacity(0.3),
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                padding: EdgeInsets.symmetric(horizontal: 45.0),
                child: headerText(text: 'DELIVERED FAST FOOD\nTO YOUR\n DOOR', color: Colors.white,
                    fontSize: 45.0)),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 30.0),
              child: Text(
                'Set exact location to find the right restaurants near you',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 17.0),
              ),
            ),
            createButton(
              labelButton: 'Log in',
              buttonColor: orange,
              func: () {
                Navigator.pushNamed(context, 'login');
              }
            ),
            createButton(
              labelButton: 'Connect with facebook',
              buttonColor: fbButtonColor,
              isWithIcon: true,
              icon: AssetImage('assets/images/facebook_icon.png'),
              func: () => print('Go to Faccebook')
            )
            // Aquí va el boton azul
          ],
        ),
      ],
    ));
  }
}
/*
            Container(
              width: 350.0,
              height: 45.0,
              child: RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'login');
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                color: Theme.of(context).accentColor,
                child: Text(
                  'Log in',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                  ),
                ),
              ),
            ),
            */
