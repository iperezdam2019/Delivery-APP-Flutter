// Commons Widgets
import 'package:delivery/src/features/presentation/commons_widgets/backButtons/back_button.dart';
import 'package:delivery/src/features/presentation/commons_widgets/headers/header_text.dart';
import 'package:delivery/src/features/presentation/commons_widgets/buttons/roundend_button.dart';

//Colors
import 'package:delivery/src/colors/colors.dart';

import 'package:flutter/material.dart';

class SingUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Builder(
            builder: (BuildContext context) =>
                backButton(context, Colors.black)),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(children: [
          headerText(text:'Create an account', color: primaryColor, fontSize: 30),
          _usernameInput(context),
          _emailInput(context),
          _phoneInput(context),
          _dateOfBirthInput(context),
          _passwordInput(context),
          createButton(buttonColor: orange, labelButton:'Sin up', func: (){

          } ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
            child: Text(
              'By clicking Sing up you agree to the following Terms and Conditions without reservation',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 13.0
              ),),
          )


          ]),
        ),
      ),
    );
  }
}


Widget _usernameInput(BuildContext context){
  return Container(
    margin: EdgeInsets.only(top:40.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
      color: bgInputs,
      borderRadius: BorderRadius.circular(40.0)
    ),
    child: TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: 'Username',
        border: OutlineInputBorder(
          borderSide: BorderSide.none
        ),
      ),
    ),
  );
}

Widget _emailInput(BuildContext context){
  return Container(
    margin: EdgeInsets.only(top:10.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
      color: bgInputs,
      borderRadius: BorderRadius.circular(40.0)
    ),
    child: TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'Email',
        border: OutlineInputBorder(
          borderSide: BorderSide.none
        ),
      ),
    ),
  );
}

Widget _phoneInput(BuildContext context){
  return Container(
    margin: EdgeInsets.only(top:10.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
      color: bgInputs,
      borderRadius: BorderRadius.circular(40.0)
    ),
    child: TextField(
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        hintText: 'Phone',
        border: OutlineInputBorder(
          borderSide: BorderSide.none
        ),
      ),
    ),
  );
}

Widget _dateOfBirthInput(BuildContext context){
  return Container(
    margin: EdgeInsets.only(top:10.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
      color: bgInputs,
      borderRadius: BorderRadius.circular(40.0)
    ),
    child: TextField(
      keyboardType: TextInputType.datetime,
      decoration: InputDecoration(
        hintText: 'Date of Birth',
        border: OutlineInputBorder(
          borderSide: BorderSide.none
        ),
      ),
    ),
  );
}

Widget _passwordInput(BuildContext context){
  return Container(
    margin: EdgeInsets.only(top:10.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
      color: bgInputs,
      borderRadius: BorderRadius.circular(40.0)
    ),
    child: TextField(
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        border: OutlineInputBorder(
          borderSide: BorderSide.none
        ),
      ),
    ),
  );
}

