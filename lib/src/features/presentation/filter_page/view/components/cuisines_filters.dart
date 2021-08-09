import 'package:delivery/src/features/presentation/commons_widgets/buttons/roundend_button.dart';
import 'package:flutter/material.dart';

// Colors
import 'package:delivery/src/colors/colors.dart';

class CuisinesFilter extends StatefulWidget {
  CuisinesFilter({Key? key}) : super(key: key);

  @override
  _CuisinesFilterState createState() => _CuisinesFilterState();
}

class _CuisinesFilterState extends State<CuisinesFilter> {
  bool btnAmerican = false;
  bool btnSushi = false;
  bool btnAsia = false;
  bool btnDesserts = false;
  bool btnFastFoot = false;
  bool btnVietnamese = false;
  bool btnPizza = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Wrap(
          alignment: WrapAlignment.start,
          direction: Axis.horizontal,
          children: [
            _createButtonFilter(() {
              setState(() => btnAmerican = !btnAmerican);
            }, btnAmerican, 'American'),
            _createButtonFilter(() {
              setState(() => btnAsia = !btnAsia);
            }, btnAsia, 'Asia'),
            _createButtonFilter(() {
              setState(() => btnSushi = !btnSushi);
            }, btnSushi, 'Shusi'),
            _createButtonFilter(() {
              setState(() => btnPizza = !btnPizza);
            }, btnPizza, 'Pizza'),
                       _createButtonFilter(() {
              setState(() => btnDesserts = !btnDesserts);
            }, btnDesserts, 'Desserts'),
            _createButtonFilter(() {
              setState(() => btnFastFoot = !btnFastFoot);
            }, btnFastFoot, 'FastFoot'),
            _createButtonFilter(() {
              setState(() => btnVietnamese = !btnVietnamese);
            }, btnVietnamese, 'Vietnam')
          ],
        ),

      ],
    );
  }
}

Widget _createButtonFilter(VoidCallback func, bool isActive, String labelText) {
  return Container(
    width: 120,
    height: 50,
    margin: EdgeInsets.only(left: 5.0),
    child: createButton(
      labelButton: labelText,
      labelButtonColor: isActive ? orange : gris, 
      buttonColor: white,
      func: func,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
        side: BorderSide(color: isActive ? orange : gris)),
      ),
  );
  
  
  /*createButton(
      labelButton: labelText,
      labelButtonColor: isActive ? orange : gris,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
          side: BorderSide(
            color: isActive ? orange : gris,
          )),
      buttonColor: gris,
      func: () {});
      */
}
