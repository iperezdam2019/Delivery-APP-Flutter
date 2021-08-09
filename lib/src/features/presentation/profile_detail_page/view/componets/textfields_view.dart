import 'package:delivery/src/utils/extensions/screen_size.dart';
import 'package:flutter/material.dart';

class TextFieldsProfileDetailView extends StatelessWidget {
//const name ({required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          _createTextFieldUsername(context),
          _createTextFieldEmail(context),
          _createTextFieldPhone(context),
          _createTextFieldDateOfBirth(context),
          _createTextFieldDeliveryAddres(context)
        ],
      ),
    );
  }
}


Widget _createTextFieldUsername(BuildContext context){
  return Container(
    width: screenWidth.getScreenWidth(context: context, multiplier: 0.85),
    decoration: BoxDecoration(
      border: Border(bottom: BorderSide(
        color: Theme.of(context).disabledColor
      ))
    ),
    child: ListTile(
      title: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          hintText: 'Username', border: OutlineInputBorder(borderSide: BorderSide.none)
        ),
      ),
    ),
  );
}

Widget _createTextFieldEmail(BuildContext context){
  return Container(
    width: screenWidth.getScreenWidth(context: context, multiplier: 0.85),
    decoration: BoxDecoration(
      border: Border(bottom: BorderSide(
        color: Theme.of(context).disabledColor
      ))
    ),
    child: ListTile(
      title: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: 'Email', border: OutlineInputBorder(borderSide: BorderSide.none)
        ),
      ),
    ),
  );
}

Widget _createTextFieldPhone(BuildContext context){
  return Container(
    width: screenWidth.getScreenWidth(context: context, multiplier: 0.85),
    decoration: BoxDecoration(
      border: Border(bottom: BorderSide(
        color: Theme.of(context).disabledColor
      ))
    ),
    child: ListTile(
      title: TextField(
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          hintText: 'Phone', border: OutlineInputBorder(borderSide: BorderSide.none)
        ),
      ),
    ),
  );
}

Widget _createTextFieldDateOfBirth(BuildContext context){
  return Container(
    width: screenWidth.getScreenWidth(context: context, multiplier: 0.85),
    decoration: BoxDecoration(
      border: Border(bottom: BorderSide(
        color: Theme.of(context).disabledColor
      ))
    ),
    child: ListTile(
      title: TextField(
        keyboardType: TextInputType.datetime,
        decoration: InputDecoration(
          hintText: 'Date of Birth', border: OutlineInputBorder(borderSide: BorderSide.none)
        ),
      ),
    ),
  );
}

Widget _createTextFieldDeliveryAddres(BuildContext context){
  return Container(
    width: screenWidth.getScreenWidth(context: context, multiplier: 0.85),
    decoration: BoxDecoration(
      border: Border(bottom: BorderSide(
        color: Theme.of(context).disabledColor
      ))
    ),
    child: ListTile(
      title: TextField(
        keyboardType: TextInputType.text, maxLines: 3,
        decoration: InputDecoration(
          hintText: 'Delivery Addres', border: OutlineInputBorder(borderSide: BorderSide.none)
        ),
      ),
    ),
  );
}