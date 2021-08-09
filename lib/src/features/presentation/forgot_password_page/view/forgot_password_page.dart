import 'package:flutter/material.dart';

// Commons Widgets
import 'package:delivery/src/features/presentation/commons_widgets/alerts/alert_dialog.dart';
import 'package:delivery/src/features/presentation/commons_widgets/backButtons/back_button.dart';
import 'package:delivery/src/features/presentation/commons_widgets/headers/header_text.dart';
import 'package:delivery/src/features/presentation/commons_widgets/buttons/roundend_button.dart';

// Colors
import 'package:delivery/src/colors/colors.dart';

class ForgotPassword extends StatelessWidget {
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
          padding: EdgeInsets.all(40.0),
          child: Column(
            children: [
              headerText(text:'Forgot password', color: primaryColor, fontSize: 30.0),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Please enter your email address. You will receive a link to create a new password via email.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 15.0),
                ),
              ),
              _emailInput(),
              createButton(
                  buttonColor: orange,
                  labelButton: 'Send',
                  func: () => _showAlerta(context)),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _emailInput() {
  return Container(
    margin: EdgeInsets.only(top: 20.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
      color: Color.fromRGBO(142, 142, 147, 1.2),
      borderRadius: BorderRadius.circular(30),
    ),
    child: TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          hintText: 'Your email',
          border: OutlineInputBorder(borderSide: BorderSide.none)),
    ),
  );
}

void _showAlerta(BuildContext context) {
  showAlertDialog(
      context,
      AssetImage('assets/images/lock.png'),
      'Your password has been reset',
      "You'll shortly receive an email with a code to setup a new password",
      createButton(
          labelButton: 'Done',
          buttonColor: orange,
          func: () {
            Navigator.pushNamed(context, 'login');
          }));
}
