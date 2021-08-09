// Commons Widgets
import 'package:delivery/src/features/presentation/commons_widgets/backButtons/back_button.dart';
import 'package:delivery/src/features/presentation/commons_widgets/headers/header_text.dart';
import 'package:delivery/src/features/presentation/commons_widgets/buttons/roundend_button.dart';

import 'package:flutter/material.dart';

// UI
import 'package:flutter/services.dart';

//Colors
import 'package:delivery/src/colors/colors.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.white));

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image(
                  width: double.infinity,
                  height: 300.0,
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/login.jpg')),
              Container(
                margin: EdgeInsets.only(top: 50.0),
                child: backButton(context, Colors.white),
              ),
            ],
          ),
          Transform.translate(
            offset: Offset(0.0, -20.0),
            child: Container(
              width: double.infinity,
              height: 380,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0)),
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Center(
                  child: Column(
                    children: [
                      headerText(
                         text: 'Welcome back', color: Colors.black, fontSize: 30),
                      Text(
                        "Login to your account",
                        style: TextStyle(
                            color: gris,
                            fontWeight: FontWeight.w500,
                            fontSize: 15.0),
                      ),
                      _emailInput(),
                      _passwordInput(),
                      createButton(
                          labelButton: 'Log in',
                          buttonColor: orange,
                          func: () {
                            Navigator.pushNamed(context, 'tabs');
                          }),
                      Container(
                        margin: EdgeInsets.only(top: 10.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, 'forgot-password');
                          },
                          child: Text(
                            'Forgot your password?',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 17),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don't have an acount?",
                              style: TextStyle(
                                  color: gris,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, 'sign-up');
                              },
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 10.0),
                                child: Text(
                                  'Sing up',
                                  style: TextStyle(
                                      color: orange,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _emailInput() {
  return Container(
    margin: EdgeInsets.only(top: 10.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
      color: Color.fromRGBO(142, 142, 147, 1.2),
      borderRadius: BorderRadius.circular(30),
    ),
    child: TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          hintText: 'Email',
          border: OutlineInputBorder(borderSide: BorderSide.none)),
    ),
  );
}

Widget _passwordInput() {
  return Container(
    margin: EdgeInsets.only(top: 10.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
      color: Color.fromRGBO(142, 142, 147, 1.2),
      borderRadius: BorderRadius.circular(30),
    ),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
          hintText: 'Password',
          border: OutlineInputBorder(borderSide: BorderSide.none)),
    ),
  );
}
